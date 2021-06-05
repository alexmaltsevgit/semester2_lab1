#pragma once

#include <utility>

#include "Algorithm/algorithm.h"

#define TESTS_COUNT 5


class TestSuite {
	friend class Test;

private:
	Vector<2, double> point;
	Triangle<2, double> triangle;

	PointTriangle::Result result;

public:
	TestSuite(const Vector<2, double>& point, const Triangle<2, double>& triangle, PointTriangle::Result result) :
		point(point),
		triangle(triangle),
		result(result)
	{}
};



namespace Tcase {

	const TestSuite suites[TESTS_COUNT] = {

		TestSuite {
			Vector<2, double>{1, 0},
			Triangle<2, double>{
				{1, 1},
				{1, -1},
				{-1, 0}
			},
			PointTriangle::Result::BORDER
		},

		TestSuite {
		  Vector<2, double>{1, 1},
      Triangle<2, double>{
				{10, 10},
				{10, -10},
				{-10, 0}
			},
			PointTriangle::Result::INSIDE
		},
		
		TestSuite {
		  Vector<2, double>{0, 0},
      Triangle<2, double>{
				{1, 2},
				{2, 1},
				{-10, 100}
			},
			PointTriangle::Result::OUTSIDE
		},

		TestSuite {
      Vector<2, double>{0, 0},
      Triangle<2, double>{
				{2, 2},
				{2, -2},
				{-2, 0}
			},
			PointTriangle::Result::INSIDE
		},

		TestSuite {
      Vector<2, double>{2, 3},
      Triangle<2, double>{
				{4, 1},
				{6, 7},
				{2, 1}
			},
			PointTriangle::Result::OUTSIDE
		},

	};

}