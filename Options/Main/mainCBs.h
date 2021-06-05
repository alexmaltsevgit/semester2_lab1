#pragma once

#include "ConsoleUI/Menu.h"
#include "Test/Test.h"
#include "Util/UserFile.h"



namespace mainOpt {

	const ConsoleUI::Callback callbacks[] = {

		// run algorithm
		[](ConsoleUI::State& state) {
			if (state.input != &std::cin) {
				state.input->seekg(0);
			}

			std::cout << '\n';
			PointTriangle::runUserInteraction(*(state.output), *(state.input));
			std::cout << std::endl;

			system("PAUSE");
			return MENU_SECTION::MAIN;
		},

		// run tests
		[](ConsoleUI::State& state) {
			Test test = {};
			test.runTest();

			system("PAUSE");
			return MENU_SECTION::MAIN;
		},

		// go to settings
		[](ConsoleUI::State& state) {
			return MENU_SECTION::SETTINGS;
		},

		// information
		[](ConsoleUI::State& state) {
			using std::cout, std::endl, std::string_view;

			cout << "\n\tИНФОРМАЦИЯ О РАБОТЕ\n";

			string_view name = " Александр Мальцев";
			string_view workName = " Лабораторная работа №1";
			int variant = 6;
			string_view taskDescription = " Для заданной точки и треугольника на плоскости определить, принадлежит ли точка треугольнику.";

			cout << '\n' <<
				name << '\n' <<
				workName << '\n' <<
				" Вариант " << variant << '\n' <<
				taskDescription << '\n' << endl;

			system("PAUSE");
			return MENU_SECTION::MAIN;
		},

		// exit
		[](ConsoleUI::State& state) {
			UserFile::close(state.output);
			UserFile::close(state.input);

			return MENU_SECTION::EXIT;
		}

	};

}