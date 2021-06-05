#pragma once

#include <iostream>

#include "Options/menuSectionCodes.h"

namespace ConsoleUI {

	class State {
  friend class Menu;

	private:
		int _currentOptionsIndex = 0;

	public:
		std::istream* input = &std::cin;
		std::ostream* output = &std::cout;
	};

}