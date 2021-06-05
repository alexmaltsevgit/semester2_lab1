#include "Options/allOptions.h"


int main() {
  std::string header =
          "\tЛабораторная работа №1\n" \
          "\tВариант 6\n" \
          "\tМальцев Александр";

	ConsoleUI::Menu menu(header, opt::allOptions);
	menu.startSelectionLoop();

	return 0;
}
