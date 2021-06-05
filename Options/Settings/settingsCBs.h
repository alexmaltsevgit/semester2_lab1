#pragma once

#include "ConsoleUI/Menu.h"
#include "Util/UserFile.h"


namespace settingsOpt {

	const ConsoleUI::Callback callbacks[] = {

		// output
		[](ConsoleUI::State& state) {
			std::cout << std::endl <<
			  " Введите абсолютный или относительный путь к Вашему файлу\n" \
				" Вы можете ввести 0 чтобы вернуться в главное меню\n" \
				" Если файл не пуст, он будет дополнен текстом результата в конце" << std::endl;

			UserFile::close(state.output);

			state.output = UserFile::get(std::ios::app);
			state.output = state.output ? state.output : &std::cout;

			system("PAUSE");
			return MENU_SECTION::SETTINGS;
		},

		// input
		[](ConsoleUI::State& state) {
			std::cout << std::endl <<
        " Введите абсолютный или относительный путь к Вашему файлу\n" \
				" Вы можете ввести 0 чтобы вернуться в главное меню" << std::endl;

			UserFile::close(state.input);

			state.input = UserFile::get(std::ios::in);
			state.input = state.input ? state.input : &std::cin;

			system("PAUSE");
			return MENU_SECTION::SETTINGS;
		},

		// back
		[](ConsoleUI::State& state) {
			return MENU_SECTION::MAIN;
		}

	};

}
