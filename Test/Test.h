#pragma once

#include "Algorithm/algorithm.h"
#include "Util/ConsoleState.h"
#include "cases.h"



class Test {
	using Vec = Vector<2, double>;
	using Tr = Triangle<2, double>;

private:
	Vector<2, double>* _point = nullptr;
	Triangle<2, double>* _triangle = nullptr;

	const TestSuite* _suites = Tcase::suites;
	const int _testsCount = TESTS_COUNT;

private:
	void _setConditions(const Vec* point, const Tr* triangle) {
		_point = const_cast<Vec*>(point);
		_triangle = const_cast<Tr*>(triangle);
	}

	static void _alertGoodResult(int suiteCount) {
		ConsoleState::setColor(ConsoleState::Color::Green, ConsoleState::Color::Black);
		std::cout << ' ' << suiteCount << '.' << " Тест пройден.\n";
		ConsoleState::setColor(ConsoleState::Color::LightGray, ConsoleState::Color::Black);
	}

	static void _alertBadResult(int suiteCount, const PointTriangle::Result& result, const PointTriangle::Result& expected) {
		ConsoleState::setColor(ConsoleState::Color::Red, ConsoleState::Color::Black);
		std::cout << ' ' << suiteCount << '.' << " Ошибка. Ожидаемый результат: ";
		PointTriangle::printResult(expected) << std::endl;
		std::cout << "   " << " Полученный результат: ";
		PointTriangle::printResult(result) << std::endl;
		ConsoleState::setColor(ConsoleState::Color::LightGray, ConsoleState::Color::Black);
	}

public:
	void runTest() {
		std::cout << "\n\tТЕСТИРОВАНИЕ\n" << std::endl;


		for (int i = 0; i < _testsCount; i++) {
			_setConditions(
			  &(_suites[i].point),
				&(_suites[i].triangle)
			);
			
			auto suiteResult = PointTriangle::checkRelativePosition(*_point, *_triangle);

			if (suiteResult == _suites[i].result) {
				_alertGoodResult(i + 1);
			} else {
				_alertBadResult(i + 1, suiteResult, _suites[i].result);
			}
		}


		std::cout << '\n' << std::endl;
	}
};
