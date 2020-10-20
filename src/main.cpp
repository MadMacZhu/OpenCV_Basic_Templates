#include <iostream>
#include <showimg.h>
#include <convolve.h>
#include <cvmat.h>
#include <opencv2/opencv.hpp>

int main()
{
	std::string path = "./images/test2.png";
	/* ShowImg(path); */
	/* Convolve(path); */
	CVMat(path);
	return 0;
}