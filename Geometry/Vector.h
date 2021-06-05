#pragma once
#include <iostream>
#include <cstdarg>
#include "Util/Input.h"


template<int size, typename T>
class Vector {
	using Vec = Vector<size, T>;

protected:
	T* _coords;

public:
  Vector();
	Vector(const Vector<size, T>& other);
	Vector(Vector<size, T>&& other);
	Vector(std::initializer_list<T> args);

	int count() const;

	T& operator[] (int i) const;
	Vec& operator+ (const Vec& vec) const;
	Vec& operator- (const Vec& vec) const;
	Vec& operator* (T mult) const;
	bool operator== (const Vec& vec) const;

  template<int s, typename Type>
	friend std::ostream& operator<< (std::ostream& out, const Vector<s, Type>& vec);

  template<int s, typename Type>
	friend std::istream& operator>> (std::istream& in, Vector<s, Type>& vec);
};


template<int size, typename T>
inline Vector<size, T>::Vector() :
	_coords(new T[size])
{}

template<int size, typename T>
inline Vector<size, T>::Vector(const Vector<size, T>& other) :
	Vector() {
	for (int i = 0; i < size; i++) {
		_coords[i] = other[i];
	}
}

template<int size, typename T>
inline Vector<size, T>::Vector(Vector<size, T>&& other) :
	Vector() {
	for (int i = 0; i < size; i++) {
		_coords[i] = std::move(other[i]);
	}
}

template<int size, typename T>
inline Vector<size, T>::Vector(const std::initializer_list<T> args) :
	Vector()
{
	if (args.size() == 0) {
		return;
	}

	if (args.size() != size) {
		throw std::invalid_argument("VECTOR INVALID ARGUMENT: TEMPLATE SIZE DOES NOT MATCH REAL SIZE");
	}

	int i = 0;
	for (auto itemptr = args.begin(); itemptr != args.end(); itemptr++) {
		_coords[i] = static_cast<T>(*itemptr);
		i++;
	}
}

template<int size, typename T>
inline int Vector<size, T>::count() const {
	return size;
}


template<int size, typename T>
inline T& Vector<size, T>::operator[](int i) const {
	return const_cast<T&>(_coords[i]);
}


template<int size, typename T>
inline Vector<size, T>& Vector<size, T>::operator+(const Vec& vec) const {
	Vec newVec{};

	for (int i = 0; i < size; i++) {
    newVec[i] = this[i] + vec[i];
  }

	return newVec;
}


template<int size, typename T>
inline Vector<size, T>& Vector<size, T>::operator-(const Vec& vec) const {
	Vec newVec{};

	for (int i = 0; i < size; i++) {
    newVec[i] = this[i] - vec[i];
  }

	return newVec;
}


template<int size, typename T>
inline Vector<size, T>& Vector<size, T>::operator*(T mult) const {
	Vec newVec{};

	for (int i = 0; i < size; i++) {
    newVec[i] = this[i] * mult;
  }

	return newVec;
}


template<int size, typename T>
inline bool Vector<size, T>::operator==(const Vec& vec) const {
	for (int i = 0; i < 3; i++) {
		if (this[i] != vec[i])
			return false;
	}

	return true;
}


template<int s, typename Type>
std::ostream& operator<<(std::ostream& out, const Vector<s, Type>& vec) {
	out << '(';

	for (int i = 0; i < s; i++) {
		out << vec[i];
		if (i != s - 1)
			out << ", ";
	}

	out << ')';

	return out;
}


template<int s, typename Type>
std::istream& operator>>(std::istream& in, Vector<s, Type>& vec) {
	for (int i = 0; i < s; i++) {
		try {
			vec[i] = Input::readOne<Type>(in);
		} catch (std::runtime_error& e) {
			throw e;
		}
	}

	return in;
}
