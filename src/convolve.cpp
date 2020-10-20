#include "./convolve.h"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <string>
#include <math.h>

void Convolve(std::string path) {
	cv::Mat src, dst;
	src = cv::imread(path);
	if (!src.data) {
		std::cout << "Could not load image..." << std::endl;
		return;
	}
	dst = cv::Mat::zeros(src.size(), src.type());

	cv::namedWindow("Input Image", cv::WINDOW_AUTOSIZE);
	cv::imshow("Input Image", src);

	int cols = (src.cols - 1) * src.channels();
	int offsetx = src.channels();
	int rows = src.rows;
	for (int r = 1; r < (rows - 1); r++) {
		const uchar* current = src.ptr<uchar>(r);
		const uchar* previous = src.ptr<uchar>(r - 1);
		const uchar* next = src.ptr<uchar>(r + 1);
		uchar* output = dst.ptr<uchar>(r);
		for (int c = offsetx; c < cols; c++) {
			output[c] = cv::saturate_cast<uchar>(current[c] * 5
			    - (current[c - offsetx] + current[c + offsetx]
			    + previous[c] + next[c]));
		}
	}

	cv::namedWindow("Convolved Image", cv::WINDOW_AUTOSIZE);
	cv::imshow("Convolved Image", dst);

	/*Alternatively*/
	cv::Mat dst_alt;
	cv::Mat kernel = (cv::Mat_<char>(3,3) 
					  << 0,-1,0,-1,5,-1,0,-1,0);
	cv::filter2D(src, dst_alt, src.depth(), kernel);

	cv::namedWindow("Convolved Image Alt", cv::WINDOW_AUTOSIZE);
	cv::imshow("Convolved Image Alt", dst_alt);
	
	cv::waitKey(0);
	cv::destroyAllWindows();

	cv::imwrite("./images/test2_convolved.png", dst);
	cv::imwrite("./images/test2_convolved_alt.png", dst_alt);
	return;
}