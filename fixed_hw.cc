#include <iostream>
#include <vector>
#include <cmath>

/*
*	\brief finds the standard deviation of an array
*	\param array a entered
*	\param size of array as n
*	\return returns the standard deviation of array
*/


int deviation( int* a, int n )
{
	int sum=0;	// Sum of numbers in the array
	for(int i = 0; i <= (n - 1); i++)
	{
		sum += a[i];
	} 
	double mean = sum /= (n - 1);	//average of numbers
	double stddev = 0;		//standard deviation 
	for(int i = 0; i <= n - 2; i++)
	{
		stddev += (a[i] - mean) * (a[i] - mean); 
	}
	stddev /= (n - 1);
	if( stddev = 0)
		std::cout << "Sigma is zero." << std::endl;
	return sqrt(stddev);
}
