#include "algorithm.h"

void PointTriangle::_readFromConsole(Vector<2, double>& point, Triangle<2, double>& triangle) {
	using std::cout, std::cin, std::endl;

	cout << " Введите координаты точки: ";
	cin >> point;

	cout << " Введите координаты трёх точек треугольника:" << endl;
	cin >> triangle;
}


std::ostream& PointTriangle::_printUserData(const Vector<2, double>& p, const Triangle<2, double>& tr, std::ostream& out) {
	out << " Координаты точки: " << p;
	out << " Координаты точек треугольника: " << tr;

	return out;
}


void PointTriangle::runUserInteraction(std::ostream& out, std::istream& in) {
	using std::cout, std::endl;

	Vector<2, double> point{};
	Triangle<2, double> triangle{};

	// talk with user if manual input,
	// read data silently if file input
	if (&in == &std::cin) {
		_readFromConsole(point, triangle);
	} else {
		in >> point;
		in >> triangle;
	}

	Result result = checkRelativePosition(point, triangle);
	_printFooter(point, triangle, result, std::cout);

	if (&out != &std::cout)
		_printFooter(point, triangle, result, out);
}


std::ostream& PointTriangle::_printFooter(Vec& point, Tr& triangle, Result result, std::ostream& out) {
	out << "\tВХОДНЫЕ ДАННЫЕ\n\n";
	_printUserData(point, triangle, out) << "\n\n";
	out << "\tРЕЗУЛЬТАТ:\n\n";
	printResult(result, out) << std::endl;

	return out;
}


std::ostream& PointTriangle::printResult(Result res, std::ostream& out) {
	switch (res) {
	case Result::OUTSIDE:
		out << " Точка находится вне треугольника.";
		break;
	case Result::INSIDE:
		out << " Точка находится внутри треугольника.";
		break;
	case Result::BORDER:
		out << " Точка находится на стороне треугольника.";
		break;
	default:
		break;
	}

	return out;
}


PointTriangle::Result PointTriangle::checkRelativePosition(const Vector<2, double>& p, const Triangle<2, double>& tr) {
	constexpr double EPSILON = 1e-8;

	double alpha = (tr.v0[0] - p[0]) * (tr.v1[1] - tr.v0[1]) - (tr.v1[0] - tr.v0[0]) * (tr.v0[1] - p[1]);
	double beta = (tr.v1[0] - p[0]) * (tr.v2[1] - tr.v1[1]) - (tr.v2[0] - tr.v1[0]) * (tr.v1[1] - p[1]);
	double gamma = (tr.v2[0] - p[0]) * (tr.v0[1] - tr.v2[1]) - (tr.v0[0] - tr.v2[0]) * (tr.v2[1] - p[1]);


	if (
		(alpha > 0 && beta > 0 && gamma > 0) ||
		(alpha < 0 && beta < 0 && gamma < 0)
		) {
		return Result::INSIDE;
	}


	if (
		abs(alpha) < EPSILON ||
		abs(beta) < EPSILON ||
		abs(gamma) < EPSILON
		) {
		return Result::BORDER;
	}


	return Result::OUTSIDE;
}