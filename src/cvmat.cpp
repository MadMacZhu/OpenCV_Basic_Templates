#include <opencv2/opencv.hpp>
#include "./cvmat.h"
#include <iostream>
#include <string>

void CVMat(std::string path)
{
	cv::Mat src;
	src = cv::imread(path);
	if (!src.data) {
		std::cout << "Could not load image..." << std::endl;
		return;
	}

	cv::Mat dst;
	dst = cv::Mat(src.size(), src.type());
	dst = cv::Scalar(127, 0, 255);
	cv::Mat dst2(300, 300, CV_8UC3, cv::Scalar(0, 0, 255));

	/* cv::Mat dst = src.clone(); */
	/* cv::Mat dst; src.copyTo(dst); */
	/* int cols = src.cols; int rows = src.rows; */

	cv::namedWindow("Output");
	cv::imshow("Output", dst);
	cv::namedWindow("Output2");
	cv::imshow("Output2", dst2);

	/* Accessing single channel picture's pixel */
	cv::Mat src_gray;
	cv::cvtColor(src, src_gray, cv::COLOR_BGR2GRAY);
	int row = 5, col = 7;
	int pixel = src_gray.at<uchar>(row, col);
	std::cout <<  pixel << std::endl;

	/* Accessing multi-channel picture's pixel */
	int a = src.at<cv::Vec3b>(row, col)[0];
	int b = src.at<cv::Vec3b>(row, col)[1];
	int c = src.at<cv::Vec3b>(row, col)[2];
	std::cout <<  a << "," << b << "," << c << std::endl;
	std::cout << src.type() << std::endl;

	/* Getting the invert image */
	cv::Mat dst3;
	cv::bitwise_not(src, dst3);
	cv::namedWindow("Inverted Image");
	cv::imshow("Inverted Image", dst3);

	cv::waitKey(0);
	cv::destroyAllWindows();
	return;
}