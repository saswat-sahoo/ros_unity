#include <opencv2/opencv.hpp>
#include<ros/ros.h>
#include<image_transport/image_transport.h>
#include<cv_bridge/cv_bridge.h>
#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
//#include<sstream>
using namespace cv;
int main(int,char**){
	VideoCapture video_capture(0);
	if(!video_capture.isOpened())
		return -1;
	Mat gray_image;
	namedWindow("edges",1);
	while(true){
		Mat frame;
		video_capture>>frame;
		//cvtColor(frame,gray_image,COLOR_BGR2GRAY);
		imshow("gray_image",frame);
		waitKey(30);
	}
	return 0;
}
