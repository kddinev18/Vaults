---
tags: [classnote, ADS, linkedlist]
creation date: 2022-10-22 20:49
modification date: 2022-10-22 20:49
---
Links: [[Algorithms and Data Stuctures - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Greedy algorithms
2022-10-22

Greedy algs
# Notes
## 1. Определие
Алчен алгоритъм е алгоритмична стратегия, която прави най-добрия оптимален избор на всеки малък етап с целта на това в крайна сметка да доведе до глобално оптимално решение.  

```ad-note
title: Note
Това означава, че алгоритъмът избира най-доброто решение в момента, без оглед на последствията.
```

## 2. Механизъм на работа
Алчният алгоритъм работи, като избира най-добрия възможен отговор във всяка стъпка и след това преминава към следващата стъпка, докато стигне до края

```ad-note
title: Note
Алчните алгоритми не успяват да създадат оптималното решение за много други проблеми и дори могат да създадат уникалното възможно най-лошо решение.
```

## 3. Алгоритмично парадигми
Общ модел или рамка, която е в основата на дизайна на клас алгоритми. Алгоритмичната парадигма е абстракция, по-висока от понятието алгоритъм, точно както алгоритъмът е абстракция, по-висока от компютърна програма.

**Brute Force** - Груба сила: Най-често използваният подход, който е много важен за определяне дали съществува решение на проблем или не.

**Recursion** - Рекурсия: Идентифицирайте повтарящ се модел в проблем и се възползвайте от терминално състояние, за да стигнете до върха.  

**Greedy** - Алчен: Решете проблема, като изберете най-оптималното решение на всяка стъпка и се надявайте да постигнете глобално оптимално решение.  

**Divide and Conquer** - Разделяй и владей: Разделете проблема на по-малки части и започнете да ги решавате една по една, за да достигнете до оптималното решение.  

**Dynamic Programming** - Динамично програмиране: Търсете оптимална подструктура в проблема и продължавайте да намирате оптималното решение за всеки подпроблем.

## 4. Алчни алгоритми
#### **Сума от монети**
```cs
int findMax(int* a, int m,int s)
{
	for (int i = 0; i < 6; i++)
	{
		if (s+a[i]<=m)
		{
			cout << a[i]<<" ";
			return a[i];
		}
	}
	return 0;
}
```
#### **Сума на дължини**
```cs
int minCost(int a[], int n)
{
	int temp = 0;
    sort(a, a + n);
	for (int i = 0; i < n - 1; i++)
	{
		int temp2 = temp;
		temp = (a[i] + a[i + 1]);
		a[i + 1] = temp;
		temp = temp + temp2;
	}
	return temp;
}
```
#### **Египедски дроби**
```cs
void egyptianFraction(int nr, int dr)
{
	if (dr == 0 || nr == 0)
		return;

	if (dr % nr == 0)
	{
		cout << "1/" << dr / nr;
		return;
	}
	if (nr % dr == 0)
	{
		cout << nr / dr;
		return;
	}
	if (nr > dr)
	{
		cout << nr / dr << " + ";
		egyptianFraction(nr % dr, dr);
		return;
	}
	int n = dr / nr + 1;
	cout << "1/" << n << " + ";
	egyptianFraction(nr * n - dr, dr * n);
}
```
#### **Раница**
```cs
double fractionalKnapsack(int knapsackWeight, struct Item itemArray[], int n)
{
    sort(itemArray, itemArray + n, cmp);
    double finalvalue = 0.0;
    for (int i = 0; i < n; i++) 
    {
        if (itemArray[i].weight <= knapsackWeight)
        {
            knapsackWeight -= itemArray[i].weight;
            finalvalue += itemArray[i].value;
        }
        else 
        {
            finalvalue += itemArray[i].value * ((double)knapsackWeight / (double)itemArray[i].weight);
            break;
        }
    }
    return finalvalue;
}
```

### 4.1 Алчни алгоритми за работа
#### **Платформи**
```cs
int findPlatform(int arrival[], int departure[], int n)
{
    int p = 1, r = 1;
    for (int i = 0; i < n; i++) 
    {
        p = 1;
        for (int j = 0; j < n; j++) 
        {
            if (i != j && arrival[i] >= arrival[j] && departure[j] >= arrival[i]) 
            {
                p++;
            }
        }

        r = max(p, r);
    }
    return r;
}
```
#### **Работа**
```cs
void printJobScheduling(Job arr[], int n)
{
    sort(arr, arr + n, comparison);

    vector<int> r = vector<int>(n, 0);
    vector<bool> s = vector<bool>(n, false);

    for (int i = 0; i < n; i++) 
    {
        for (int j = min(n, arr[i].dead) - 1; j >= 0; j--) 
        {
            if (!s[j]) 
            {
                r[j] = i;
                s[j] = true;
                break;
            }
        }
    }

    for (int i = 0; i < n; i++)
    {
        if (s[i])
        {
            cout << arr[r[i]].id << " ";
        }
    }
}
```
#### **Дейност**
```cs
struct Activitiy {
    int start, finish;
};

bool activityCompare(Activitiy s1, Activitiy s2)
{
    return (s1.finish < s2.finish);
}

void maxActivities(int start[], int finish[], int n)
{
    Activitiy* acticities = new Activitiy[n];
    for (int i = 0; i < n; i++)
    {
        acticities[i].start = start[i];
        acticities[i].finish = finish[i];
    }
    sort(acticities, acticities + n, activityCompare);

    cout << "Following activities are selected: 0 ";

    int i = 0;
    for (int j = 1; j < n; j++) 
    {
        if (acticities[j].start >= acticities[i].finish)
        {
            cout << j << " ";
            i = j;
        }
    }
}
```
#### **Полиция**
```cs
int policeThief(char policeThiefArray[], int n, int k)
{
    int captured = 0;

    vector<int> thiefs;
    vector<int> policemen;

    for (int i = 0; i < n; i++) 
    {
        if (policeThiefArray[i] == 'P')
        {
            policemen.push_back(i);
        }
        else
        {
            thiefs.push_back(i);
        }
    }

    unsigned int l = 0, r = 0;
    while (r < policemen.size() && l < thiefs.size())
    {
        if (abs(thiefs[l] - policemen[r]) <= k) 
        {
            l++;
            r++;
            captured++;
        }
        else if (thiefs[l] < policemen[r])
        {
            l++;
        }
        else 
        {
            r++;
        }
    }
    return captured;
}
```
