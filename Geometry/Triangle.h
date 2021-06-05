#pragma once
#include "Vector.h"


template<int d, typename T>
class Triangle {
	using Vec = Vector<d, T>;

public:
	Vec v0, v1, v2;
	
public:
	Triangle(
		Vec v0 = Vec{},
		Vec v1 = Vec{},
		Vec v2 = Vec{}
	) : v0(v0), v1(v1), v2(v2) {}

	Vec& operator[](int i);

  template<int dim, typename Type>
	friend std::ostream& operator<<(std::ostream& out, const Triangle<d, T>& vec);

  template<int dim, typename Type>
	friend std::istream& operator>>(std::istream& in, Triangle<d, T>& tr);
};


template<int dim, typename Type>
std::ostream& operator<<(std::ostream& out, const Triangle<dim, Type>& tr) {
	out << "{ " << tr.v0 << ' ' << tr.v1 << ' ' << tr.v2 << " }";

	return out;
}


template<int dim, typename Type>
std::istream& operator>>(std::istream& in, Triangle<dim, Type>& tr) {
	constexpr int TRIANGLE_VERTICES_COUNT = 3;

	for (int i = 0; i < TRIANGLE_VERTICES_COUNT; i++) {
		try {
			in >> tr[i];
		} catch (std::runtime_error& e) {
			throw e;
		}
	}

	return in;
}

template<int d, typename T>
inline Vector<d, T>& Triangle<d, T>::operator[](int i) {
	switch (i) {
	case 1:
		return v0;
		break;
	case 2:
		return v1;
		break;
	case 3:
		return v2;
		break;
	default:
		throw (std::invalid_argument("Triangle operator[] invalid argument"));
	}
}
