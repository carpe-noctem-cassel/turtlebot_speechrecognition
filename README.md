# turtlebot_speechrecognition

# Compile cpp with gcc
`gcc -o TurtleBotSpeechRecognition TurtleBotSpeechRecognition.cpp     -DMODELDIR=\"`pkg-config --variable=modeldir pocketsphinx`\" `pkg-config --cflags --libs pocketsphinx sphinxbase``

