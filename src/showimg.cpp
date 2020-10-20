#include "./showimg.h"
#include <iostream>
#include <string>
#include <opencv2/opencv.hpp>


void ShowImg(std::string path) {
	cv::Mat img = cv::imread(path, cv::IMREAD_UNCHANGED);
	if (img.empty()) {
		std::cout << "Could not load image..." << std::endl;
		return;
	}
	cv::Mat img_gray = cv::imread(path, cv::IMREAD_GRAYSCALE);
	cv::Mat img_hsv;
    cv::cvtColor(img, img_hsv, cv::COLOR_RGB2HSV);

	cv::namedWindow("Image", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Image Gray", cv::WINDOW_AUTOSIZE);
	cv::namedWindow("Image HSV", cv::WINDOW_AUTOSIZE);
	cv::imshow("Image", img);
	cv::imshow("Image Gray", img_gray);
	cv::imshow("Image HSV", img_hsv);

	cv::waitKey(0);
	cv::destroyAllWindows();

	cv::imwrite("./images/test_hsv.png", img_hsv);
	return;
}