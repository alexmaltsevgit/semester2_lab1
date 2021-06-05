#pragma once
#include <iostream>
#include <fstream>
#include <functional>
#include "Geometry/Vector.h"
#include "Geometry/Triangle.h"


class PointTriangle {
	using Vec = Vector<2, double>;
	using Tr = Triangle<2, double>;

public:
	enum class Result {
		OUTSIDE,
		INSIDE,
		BORDER
	};

private:
	static void _readFromConsole(Vec& point, Tr& triangle);
	static std::ostream& _printFooter(Vec& point, Tr& triangle, Result result, std::ostream& out);
	static std::ostream& _printUserData(const Vec& point, const Tr& triangle, std::ostream& out);

	template<typename T>
	static T& getSafeInput(T& variable,
		std::istream& in = std::cin,
		std::string_view message = "Некорректный ввод. Повторите попытку\n"
	);

public:
	static std::ostream& printResult(Result result, std::ostream& out = std::cout);
	static void runUserInteraction(std::ostream& out, std::istream& in);
	static Result checkRelativePosition(const Vec& point, const Tr& triangle);
};


template<typename T>
T& PointTriangle::getSafeInput(T& variable,
	std::istream& in,
	std::string_view message
) {
	try {
		in >> variable;
	} catch (const std::exception&) {
		std::cout << message;
		PointTriangle::getSafeInput<T>(variable, in, message);
	}
}
