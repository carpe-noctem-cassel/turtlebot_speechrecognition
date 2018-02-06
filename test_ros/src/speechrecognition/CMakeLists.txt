# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 3.0.0)
project(speechrecognition)

# command to compile SpeechRecognition cpp via command line:
# g++ -o TurtleBotSpeechRecognition TurtleBotSpeechRecognition.cpp -DMODELDIR=\"/usr/local/share/pocketsphinx/model\" -I/usr/local/include -I/usr/local/include/sphinxbase -I/usr/local/include/pocketsphinx -I/usr/local/include -I/usr/local/include/sphinxbase -L/usr/local/lib -lpocketsphinx -lsphinxbase -lsphinxad -lpulse -lpulse-simple -lpthread -lm -lblas -llapack

#set(CMAKE_CXX_FLAGS "-DMODELDIR=\\\"`pkg-config --variable=modeldir pocketsphinx`\\\" `pkg-config --cflags --libs pocketsphinx sphinxbase` ${CMAKE_CXX_FLAGS}")

# What I already found out: the commands inside the backticks are executed by bash and the returned values are inserted. `pkg-config --variable=modeldir pocketsphinx` becomes /usr/local/share/pocketsphinx/model .
# When I replace the commands with the given values I can successfully compile the cpp via command line (the command from line 6).
# But with catkin_make I got a new error: undefined reference to `ad_start_rec'
# There seems to be an error with the cpp linking, maybe we can solve this problem instead of the escaping of quotes.

set(CMAKE_CXX_FLAGS "-DMODELDIR=\\\"/usr/local/share/pocketsphinx/model\\\" -I/usr/local/include -I/usr/local/include/sphinxbase -I/usr/local/include/pocketsphinx -I/usr/local/include -I/usr/local/include/sphinxbase -L/usr/local/lib -lpocketsphinx -lsphinxbase -lsphinxad -lpulse -lpulse-simple -lpthread -lm -lblas -llapack ${CMAKE_CXX_FLAGS}")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/speechrecognition/cmake")

find_package(SphinxBase 0.8 REQUIRED)
find_package(PocketSphinx 0.8 REQUIRED)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS
	roscpp 
	rospy
	std_msgs
 	message_generation
)

## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS} ${SPHINXBASE_INCLUDE_DIRS} ${POCKETSPHINX_INCLUDE_DIRS})

add_executable(talker src/TurtleBotSpeechRecognition.cpp)
target_link_libraries(talker ${catkin_LIBRARIES} ${POCKETSPHINX_LIBRARIES} ${SPHINXBASE_LIBRARIES} ${SPHINXAD_LIBRARIES})
add_dependencies(talker speechrecognition_generate_messages_cpp)

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES} ${POCKETSPHINX_LIBRARIES} ${SPHINXBASE_LIBRARIES} ${SPHINXAD_LIBRARIES})
add_dependencies(listener speechrecognition_generate_messages_cpp)

# %EndTag(FULLTEXT)%

