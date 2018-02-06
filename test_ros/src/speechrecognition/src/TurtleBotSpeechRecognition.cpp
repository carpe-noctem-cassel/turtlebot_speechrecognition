//============================================================================
// Name        : TurtleBotSpeechRecognition.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <string>
#include <pocketsphinx/pocketsphinx.h>
#include <sphinxbase/jsgf.h>
#include <sphinxbase/ad.h>
#include <sphinxbase/err.h>
#include <inttypes.h>

#include "ros/ros.h"
#include "std_msgs/String.h"

using namespace std;

ps_decoder_t *ps;
cmd_ln_t *config;
FILE *fh;
char const *hyp, *uttid;
int16 buf[512];
int rv;
int32 score;

ad_rec_t *ad;
int16 adbuf[1024];
uint8 utt_started, in_speech;
int32 k;

ros::Publisher chatter_pub;

void send_ros_command(char const* hyp) {
	std_msgs::String msg;

	std::stringstream ss;
	ss << hyp;
	msg.data = ss.str();

	ROS_INFO("%s", msg.data.c_str());

	chatter_pub.publish(msg);

	ros::spinOnce();
}


void extract_command(char const* hyp, int32 score) {
	if(hyp == NULL) {
		return;
	}
//
//public <command> = turtle bot go (<location> | <movement>);
//
//private <location> = to (the lab | the kitchen);
//private <movement> = forward | backwards;

	if(score > -8000) {
		if((strcmp (hyp,"turtle bot go to the lab") == 0)) {
			printf("COMMAND LAB\n");
			send_ros_command(hyp);
		} else if((strcmp (hyp,"turtle bot go to the kitchen") == 0)) {
			printf("COMMAND KITCHEN\n");
			send_ros_command(hyp);
		} else if((strcmp (hyp,"turtle bot go forward") == 0)) {
			printf("COMMAND FORWARD\n");
			send_ros_command(hyp);
		} else if((strcmp (hyp,"turtle bot go backwards") == 0)) {
			printf("COMMAND BACKWARDS\n");
			send_ros_command(hyp);
		} else {
			printf("ABSOLUTE MIND FUCK\n");
		}
	} else {
		printf("COMMAND DENIED\n");
	}
}

string recognize_from_microphone() {
	ad_start_rec(ad);
	ps_start_utt(ps);
	utt_started = FALSE;

	while(1) {

		try {;

			k = ad_read(ad, adbuf, 1024); //blockiert
			int rawCode = ps_process_raw(ps, adbuf, k, FALSE, FALSE);

			in_speech = ps_get_in_speech(ps);

			if(in_speech && !utt_started) {
				utt_started = TRUE;
			}

			if(!in_speech && utt_started) {
				ps_end_utt(ps);
				ad_stop_rec(ad);

				utt_started = FALSE;

				int32 score = 0;


				hyp = ps_get_hyp(ps, &score);

				printf("SCORE %d\n",score);
				fflush(stdout);

				extract_command(hyp, score);

				return hyp;

				break;
			}

		} catch (const std::exception& e) {
			printf("Exception caught.\n\n");
			fflush(stdout);
			return "";
			break;
		}



	}
}

int main(int argc, char *argv[]) {

	//ros
	ros::init(argc, argv, "talker");
	ros::NodeHandle n;
	chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);

	//pocketsphinx
	config = cmd_ln_init(NULL, ps_args(), TRUE,
			"-hmm", MODELDIR "/en-us/en-us",
			//"-lm", MODELDIR "/en-us/en-us.lm.bin",
			"-dict", MODELDIR "/en-us/cmudict-en-us.dict",
			"-jsgf", "./src/speechrecognition/src/grammar.gram",
			NULL);

	if (config == NULL) {
		fprintf(stderr,
				"Failed to create config object, see log for details\n");
		return -1;
	}
		fflush(stdout);

	ps = ps_init(config);
	if (ps == NULL) {
		fprintf(stderr, "Failed to create recognizer, see log for details\n");
		return -1;
	}

	ad = ad_open_dev(cmd_ln_str_r(config, "-adcdev"), (int) cmd_ln_float32_r(config, "-samprate"));

	while(1) {
		string decoded_speech = recognize_from_microphone();
		cout << "Decoded Speech: " << decoded_speech << "\n" << endl;
	}

	ad_close(ad);

	return 0;
}




