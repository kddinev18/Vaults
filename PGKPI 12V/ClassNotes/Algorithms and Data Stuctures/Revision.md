---
tags: [classnote, ASD, revision]
creation date: 2022-09-28 17:25
modification date: 2022-09-28 17:27
---
Links: [[Index]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Revision
2022-09-28
## Description
1.  Бройни системи - преобразуване - 2, 8, 10, 16
2.  Битови и побитови операции, битови маски
3.  НОК, HОД, решеване на системи от уравнения (Гаус, Гаус-Жордан)
4.  Математически функции - приближено изчисляване на функции (пр. корен квадратен на число)
5.  Уравнения на права - създаване на уравнение по две точки - параметрично; общо; отрезово
6.  Контейнери за данни  - масив; - вектор;
7.  Контейнери за данни - списък; едносвързан; двусвързан; кръгов;
8.  Контейнери за данни - -стек; опашка; дек;
9.  Контейнери за данни - map; - dictionary;
10.  Низове - деклариране, операзии с низове.
11.  Множества, операции, декартово произведение на множества, релация
12.  Алгоритми за сортиране - Bubble sort, Selection sort, Insertion sort, Merge sort.
13.  алгоритми за търсене - Liner sort, Binary search, Ternary Search
## Notes

### ==Countable systems==

1. Binary
```ad-hint
title: Hint
Binary system uses only "1" and "0"
```
- Binary to decimal
To convert a binary number into a decimal one we have to perform the specific tasks:
---
![[Pasted image 20220928173911.png]]
![[Pasted image 20220928173917.png]]

---
- Decimal to binary
Then to convert decimal to binary we have to do the operations in reverse:
![[Pasted image 20220928174043.png]]

2. Octal
```ad-hint
title: Hint
The octal numeric system uses numbers from "0" to "7"
```
- Octal to decimal
To convert an octal number into a decimal one we have to perform the specific tasks:
![[Pasted image 20220928174503.png]]

- Decimal to octal
Then to convert decimal to octal we have to do the operations in reverse:
![[Pasted image 20220928174535.png]]

3. Hexidecimal
```ad-hint
title: Hint
The hexidecimal numeric system uses numbers from "0" to "16" though 11,12,13,14,15,16 are represented as letters
```
| Numer | Letter |
| ----- | ------ |
| 11    | A      |
| 12    | B      |
| 13    | C      |
| 14    | D      |
| 15    | E      |
| 16    | F      |
- Hexidecimal to decimal
To convert a hexidecimal number into a decimal one we have to perform the specific tasks:
![[Pasted image 20220928174832.png]]

- Decimal to hexideciaml
Then to convert decimal to octal we have to do the operations in reverse:
![[Pasted image 20220928174855.png]]

```ad-warning
title: Warning
When convering to decimal we always start in reverse
```

### ==Bitwise Operation==
There are 4 types of basic bitwise operations:

- NOT

| A   | NOT |
| --- | --- |
| 0   | 1   |
| 1   | 0   |
- AND


| A   | B   | AND |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   | 
- OR


| A   | B   | OR  |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   | 
- XOR


| A   | B   | XOR |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   | 

### ==Binary Operations==
As normal methematics operation there are binary ones
- Addition

| Operation | Carry | Result |
| --------- | ----- | ------ |
| 0 + 0     | 0     | 0      |
| 0 + 1     | 0     | 1      |
| 1 + 0     | 0     | 1      |
| 1 + 1     | 1     | 0      |
| 1 + 1 + 1 | 1     | 1      |
- Subtraction

| Operation | Borrow | Result |
| --------- | ------ | ------ |
| 1 - 0     | 0      | 1      |
| 1 - 1     | 0      | 0      |
| 0 - 0     | 0      | 0      |
| 0 - 1     | 1      | 0      |
- Multiplication

| Operation | Result |
| --------- | ------ |
| 1 x 1     | 1      |
| 1 x 0     | 0      |
| 0 x 1     | 0      |
| 0 x 0     | 0      |

- Devision

| Opearion | Result |
| -------- | ------ |
| 0 / 1    | 0      |
| 1 / 1    | 1      | 

- Shifting
![[Pasted image 20220928180512.png]]
![[Pasted image 20220928180515.png]]

### ==GCD (Greatest Common Deviser)==
- Method 1
![[Pasted image 20220928180627.png]]
- Method 2
![[Pasted image 20220928180657.png]]

### ==LCM (Least Common Multiply)==
![[Pasted image 20220928180731.png]]
### ==Systems, linier equation==
- Gaus
![[Pasted image 20220928180829.png]]
![[Pasted image 20220928180832.png]]
![[Pasted image 20220928180834.png]]
![[Pasted image 20220928180841.png]]
![[Pasted image 20220928180845.png]]
![[Pasted image 20220928180852.png]]
- Gaus-Jordan
![[Pasted image 20220928180918.png]]
![[Pasted image 20220928180923.png]]
![[Pasted image 20220928180925.png]]
### ==Arrays, vectors==
1. Array
- Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.
- To declare an array, define the variable type, specify the name of the array followed by **square brackets** and specify the number of elements it should store:
```cs
string cars[4];
```
- We have now declared a variable that holds an array of four strings. To insert values to it, we can use an array literal - place the values in a comma-separated list, inside curly braces:

```cs
string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
```
- You access an array element by referring to the index number inside square brackets `[]`.

```cs
string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};  
cout << cars[0];
```
---

2. Vectors
- Vector Declaration
```cs
std::vector<T> vector_name;
```
- Vector Initialization


There are different ways to initialize a vector in C++.

**Method 1:**

```
// Initializer list
vector<int> vector1 = {1, 2, 3, 4, 5};
```

```
// Uniform initialization
vector<int> vector2 {1, 2, 3, 4, 5};
```

Here, we are initializing the vector by providing values directly to the vector. Now, both `vector1` and `vector2` are initialized with values **1**, **2**, **3**, **4**, **5**.

**Method 2:**

```
vector<int> vector3(5, 12);
```

Here, **5** is the size of the vector and **12** is the value.

- Add elements
```
num.push_back(6);
num.push_back(7);
```

Here, the `push_back()` function adds elements `6` and `7` to the vector.

**Note**: We can also use the `insert()` and `emplace()` functions to add elements to a vector.

- Access elements
```cs
vector<int> num {1, 2, 3};

// gives garbage value
cout << num[4];

// throws an exception
cout << num.at(4);
```

- Change elements
```cs
// change elements at indexes 1 and 4
num.at(1) = 9;
num.at(4) = 7;
```

- Remove elements

```cs
prime_numbers.pop_back();
```
- C++ Vector Functions


`size()`

returns the number of elements present in the vector

`clear()`

removes all the elements of the vector

`front()`

returns the first element of the vector

`back()`

returns the last element of the vector

`empty()`

returns **1** (true) if the vector is empty

`capacity()`

check the overall size of a vector

- Iterators

Vector iterators are used to point to the memory address of a vector element. In some ways, they act like [pointers](https://www.programiz.com/cpp-programming/pointers) in C++.

We can create vector iterators with the syntax

```cs
vector<T>::iterator iteratorName;
```

- Initialize Vector Iterators
We can initialize vector iterators using the `begin()` and `end()` functions.

- begin() function

The `begin()` function returns an iterator that points to the first element of the vector. For example,

```cs
vector<int> num = {1, 2, 3};
vector<int>::iterator iter;

// iter points to num[0]
iter = num.begin();
```

- end() function

The `end()` function points to the **theoretical element** that comes **after** the final element of the vector. For example,
cs
```
// iter points to the last element of num
iter = num.end() - 1;
```

Here, due to the nature of the `end()` function, we have used the code `num.end() - 1` to point to the last element of the num vector i.e. num[2].

- Example: Iterate Through Vector Using Iterators

```cs
#include <iostream>
#include <vector>
using namespace std;

int main() {
  vector<int> num {1, 2, 3, 4, 5};

  // declare iterator
  vector<int>::iterator iter;

  // use iterator with for loop
  for (iter = num.begin(); iter != num.end(); ++iter) {
    cout << *iter << "  ";
  }

  return 0;
}
```
### ==Stack, Queue, Deque==































---