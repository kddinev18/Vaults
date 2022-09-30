---
tags: [classnote, ADS, revision]
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
![[Pasted image 20220929192242.png]]

`push()`

adds an element into the stack

`pop()`

removes an element from the stack

`top()`

returns the element at the top of the stack

`size()`

returns the number of elements in the stack

`empty()`

returns `true` if the stack is empty

---
![[Pasted image 20220929192340.png]]

In order to create a queue in C++, we first need to include the `queue` header file.

```
#include <queue>
```

Once we import this file, we can create a `queue` using the following syntax:

```
queue<type> q;
```

Here, `type` indicates the data type we want to store in the queue. For example,

```
// create a queue of integer data type
queue<int> integer_queue;

// create a queue of string data type
queue<string> string_queue;
```

`push()`

inserts an element at the back of the queue

`pop()`

removes an element from the front of the queue

`front()`

returns the first element of the queue

`back()`

returns the last element of the queue

`size()`

returns the number of elements in the queue

`empty()`

---
![[Pasted image 20220929192453.png]]

In order to create a deque in C++, we first need to include the `deque` header file.

```
#include <deque>
```

Once we import this file, we can create a `deque` using the following syntax:

```
deque<type> dq;
```

Here, `type` indicates the data type we want to store in the deque. For example,

```
// create a deque of integer data type
deque<int> dq_integer;

// create a deque of string data type
deque<string> dq_string;
```
`push_back()`

inserts element at the back

`push_front()`

inserts element at the front

`pop_back()`

removes element from the back

`pop_front()`

removes element from the front

`front()`

returns the element at the front

`back()`

returns the element at the back

`at()`

sets/returns the element at specified index

`size()`

returns the number of elements

`empty()`

returns `true` if the deque is empty

---
### ==Linked list==
![[Pasted image 20220929192738.png]]

![[Pasted image 20220929192907.png]]
![[Pasted image 20220929192920.png]]
![[Pasted image 20220929192938.png]]
![[Pasted image 20220929192948.png]]

### ==Selection sort==
1.  Set the first element as `minimum`.
    
    ![Selection Sort Steps](https://cdn.programiz.com/cdn/farfuture/w1ZKsO2Obaw1WV03_lamX22SVyapwhbiKoLkT5Raiiw/mtime:1582112622/sites/tutorial2program/files/Selection-sort-0-initial-array.png "New Array Initialized")
    
    Select first element as minimum
    
2.  Compare `minimum` with the second element. If the second element is smaller than `minimum`, assign the second element as `minimum`.  
      
    Compare `minimum` with the third element. Again, if the third element is smaller, then assign `minimum` to the third element otherwise do nothing. The process goes on until the last element.
    
    ![Selection Sort Steps](https://cdn.programiz.com/cdn/farfuture/9jjqXX0fGtJE2ul2Mga20fvf_GkNlFAFsDMwrrwFzbQ/mtime:1582112622/sites/tutorial2program/files/Selection-sort-0-comparision.png "comparison")
    
    Compare minimum with the remaining elements
    
3.  After each iteration, `minimum` is placed in the front of the unsorted list.
    
    ![Selection Sort Steps](https://cdn.programiz.com/cdn/farfuture/6o-qergdHNq6D7eBxBi87yIuCLc7MJy2BHR4QHeNxxQ/mtime:1582112622/sites/tutorial2program/files/Selection-sort-0-swapping.png "swapping")
    
    Swap the first with minimum
    
4.  For each iteration, indexing starts from the first unsorted element. Step 1 to 3 are repeated until all the elements are placed at their correct positions.
    
    ![Selection Sort Steps](https://cdn.programiz.com/cdn/farfuture/VPGtdVYag2vfHBotOaFEiYLqvWAD_Jwfnwur_AtKQHo/mtime:1582112622/sites/tutorial2program/files/Selection-sort-0.png "Selection Sort Step 0")
    
    The first iteration
    
    ![Selection sort steps](https://cdn.programiz.com/cdn/farfuture/hgxXpCSrHui7tbyJUQNnh8N5l8MPbdbL6dlstS4-G3M/mtime:1582112622/sites/tutorial2program/files/Selection-sort-1.png "Selection sort steps 1")
    
    The second iteration
    
    ![Selection sort steps](https://cdn.programiz.com/cdn/farfuture/mDT4W_wUoS9eYT1JoUWjZuh4XBVXGDuiV9cr4Rylggk/mtime:1582112622/sites/tutorial2program/files/Selection-sort-2.png "Selection sort steps 2")
    
    The third iteration
    
    ![Selection sort steps](https://cdn.programiz.com/cdn/farfuture/dsZIa58W_SRP0yB21QmrWGQvrmob8yAVa94iCtIPWoo/mtime:1582112622/sites/tutorial2program/files/Selection-sort-3_1.png "Selection sort steps 3")
    
    The fourth iteration
### ==Insertion sort==
Suppose we need to sort the following array.

![Insertion Sort Steps](https://cdn.programiz.com/cdn/farfuture/K-kSm72ww4_afH0mQJDuR3Y-fPZYgBYo_Pclx7WlYUo/mtime:1582112622/sites/tutorial2program/files/Frame%204_0.png "Initial array")

Initial array

1.  The first element in the array is assumed to be sorted. Take the second element and store it separately in `key`.  
      
    Compare `key` with the first element. If the first element is greater than `key`, then key is placed in front of the first element.
    
    ![Insertion Sort Steps](https://cdn.programiz.com/cdn/farfuture/l-X2VCkF2rp4i0X8mZX6BGJL_FQW9EL8PkKhBswQfpc/mtime:1582112622/sites/tutorial2program/files/Insertion-sort-0_1.png "Insertion Sort Step 0")
    
    If the first element is greater than key, then key is placed in front of the first element.
    
2.  Now, the first two elements are sorted.  
      
    Take the third element and compare it with the elements on the left of it. Placed it just behind the element smaller than it. If there is no element smaller than it, then place it at the beginning of the array.
    
    ![Insertion Sort Steps](https://cdn.programiz.com/cdn/farfuture/MqcrLAaQHEhcuJTmF_m712GG_wMemTY9AID0J9w4T6E/mtime:1582112622/sites/tutorial2program/files/Insertion-sort-1_1.png "Insertion Sort Step 1")
    
    Place 1 at the beginning
    
3.  Similarly, place every unsorted element at its correct position.
    
    ![Insertion Sort Steps](https://cdn.programiz.com/cdn/farfuture/hWFdFWWU0lZD2xWGz0CoMDESnjYa9Wg1HwpH99jTTH0/mtime:1582112622/sites/tutorial2program/files/Insertion-sort-2_2.png "Insertion Sort Step 2")
    
    Place 4 behind 1
    
    ![Insertion Sort Steps](https://cdn.programiz.com/cdn/farfuture/TxAcrgHKfahw_BPEIKwCWB9BY2GNiI91yzWeetMfG9Q/mtime:1582112622/sites/tutorial2program/files/Insertion-sort-3_2.png "Insertion Sort Step 3")
    
    Place 3 behind 1 and the array is sorted
### ==Merge sort==
![merge sort example](https://cdn.programiz.com/cdn/farfuture/PRTu8e23Uz212XPrrzN_uqXkVZVY_E0Ta8GZp61-zvw/mtime:1586425911/sites/tutorial2program/files/merge-sort-example_0.png "Merge sort example")

Merge Sort example

---

Using the **Divide and Conquer** technique, we divide a problem into subproblems. When the solution to each subproblem is ready, we 'combine' the results from the subproblems to solve the main problem.

Suppose we had to sort an array A. A subproblem would be to sort a sub-section of this array starting at index p and ending at index r, denoted as A[p..r].

**Divide**

If q is the half-way point between p and r, then we can split the subarray A[p..r] into two arrays A[p..q] and A[q+1, r].

**Conquer**

In the conquer step, we try to sort both the subarrays A[p..q] and A[q+1, r]. If we haven't yet reached the base case, we again divide both these subarrays and try to sort them.

**Combine**

When the conquer step reaches the base step and we get two sorted subarrays A[p..q] and A[q+1, r] for array A[p..r], we combine the results by creating a sorted array A[p..r] from two sorted subarrays A[p..q] and A[q+1, r].
### ==Binary search==
Binary Search Algorithm can be implemented in two ways which are discussed below.

1.  Iterative Method
2.  Recursive Method

The recursive method follows [the divide and conquer](https://www.programiz.com/dsa/divide-and-conquer) approach.

The general steps for both methods are discussed below.

1.  The array in which searching is to be performed is:
    
    ![initial array Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-initial-array.png "initial array")
    
    Initial array
    
      
    Let `x = 4` be the element to be searched.
2.  Set two pointers low and high at the lowest and the highest positions respectively.
    
    ![setting pointers Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-set-pointers.png "setting pointers")
    
    Setting pointers
    
3.  Find the middle element mid of the array ie. `arr[(low + high)/2] = 6`.
    
    ![mid element Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-mid.png "mid element")
    
    Mid element
    
4.  If x == mid, then return mid.Else, compare the element to be searched with m.
5.  If `x > mid`, compare x with the middle element of the elements on the right side of mid. This is done by setting low to `low = mid + 1`.
6.  Else, compare x with the middle element of the elements on the left side of mid. This is done by setting high to `high = mid - 1`.
    
    ![finding mid element Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-find-mid.png "finding mid element")
    
    Finding mid element
    
7.  Repeat steps 3 to 6 until low meets high.
    
    ![mid element Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-mid-again.png "mid element")
    
    Mid element
    
8.  `x = 4` is found.
    
    ![found Binary Search](https://cdn.programiz.com/sites/tutorial2program/files/binary-search-found.png "found")
    
    Found
### ==Ternary search==
![[Pasted image 20220929193837.png]]
### ==Sets==
![[Pasted image 20220929192126.png]]






























---