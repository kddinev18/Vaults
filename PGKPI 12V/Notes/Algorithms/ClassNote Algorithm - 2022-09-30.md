---
tags: [classnote, ADS, linkedlist]
creation date: 2022-09-30 20:49
modification date: 2022-09-30 20:49
---
Links: [[Algorithms and Data Stuctures - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Subject
2022-09-30

Linked list
# Notes
## 1. Singly Linked List
```ad-note
title: Note
Like arrays, Linked List is a linear data structure.  

Unlike arrays, linked list elements are not stored at a contiguous location; the elements are linked using pointers.
```

**Linked list implementation**

Following are the basic operations supported by a list.

`Insertion` − Adds an element at the beginning of the list.

`Display` − Displays the complete list.

`Deletion` − Deletes an element at the beginning of the list.

`Search` − Searches an element using the given key.

`Delete` − Deletes an element using the given key.
```cs
struct NODE 

{  
  int data;

  NODE* next = NULL;

};

NODE NewNode;
```

NewNode – address of the node;

NewNode -> next  - address of the next node.

#### Insertion
##### **Insert a new node in front of the list**
```cs
//insert a new node in front of the list
NODE* prependNode(struct NODE** head, int n)
{
   /* 1. create and allocate node */
   NODE* newNode = new NODE;

   /* 2. assign data to node */
   newNode->data = n;

   /* 3. set next of new node as head */
   newNode->next = head;

   /* 4. move the head to point to the new node */
   head = newNode;
}
```

##### **Insert at the end of the Linked List**
```cs
/* insert new node at the end of the linked list */
void append(struct NODE* head, int n)
{
	/* 1. create and allocate node */
	NODE* newNode = new NODE;
	
	/* 2. assign data to the node */
	NewNode->data=n;
	NewNode->next=NULL;
	
	/* 3. set new pointer of new node to head*/
	NODE *temp = head; 
	
	While (temp)
	{
		if (temp->next == NULL)
		{ 
			temp->next= newNode;
			return;
		}
	}
	
	/* 5. Else traverse till the last node */
	temp = temp->next
}
```

##### **Insert after the given Node**
```cs
//insert new node after a given node
void insertAfter(NODE* prevNode, int nodeData)
{
    /*1. check if the given prev_node is NULL */
	if (prevNode == NULL)
	{
	   cout<<"the given previous node is NULL"  
	} 
	
    /* 2. create and allocate new node */
    NODE* newNode =new NODE; 

    /* 3. assign data to the node */
    newNode->data = nodeData;

    /* 4. Make next of new node as next of prev_node */
    newNode->next = prevNode->next;

    /* 5. move the next of prev_node as new_node */
    prevNode->next = newNode;

}
```

##### **Insert a new node in front of the list**
```cs
//insert a new node in front of the list
NODE* prependNode(struct NODE** head, int n)
{
   /* 1. create and allocate node */
   NODE* newNode = new NODE;

   /* 2. assign data to node */
   newNode->data = n;

   /* 3. set next of new node as head */
   newNode->next = head;

   /* 4. move the head to point to the new node */
   head = newNode;
}
```
---
#### Search
##### **Searching**
```cs
bool searchElement(NODE* head, int x)
{
    NODE* temp = head;  
    while (temp != NULL)
    {
        if (temp->data == x)
            return true;

        temp = temp->next;
    }
    return false;
}
```
##### **Get Element By Index**
```cs
size_t getElementByIndex(struct NODE* head, size_t index)
{
    NODE* list = head;
    int counter = 0;
    while (list)
    {
        if (counter == index)
        {
            return list->data;
        }
        counter++;
        list = list->next;
    }
   return string::npos;
}
```
##### **Display**
```cs
void displayNodes(NODE* head) 
{
    NODE* temp = head; 
    while (temp) // while(head != NULL)
    {
        cout << temp->date;
        temp = temp->next;
    }
    cout << endl;
}
```

#### Deletion
##### **Remove first**
```cs
NODE* removeFirst (NODE* head)
{
    if (head != NULL)
    {
        NODE* temp = head;
        head = temp -> next;
        delete temp;
    }
    return head;
}
```
##### **Remove last**
```cs
NODE* removeLastNode(NODE* head)
{  
	if (head == NULL)
        return NULL;

	if (head->next == NULL)  
	{
        delete head;
        return NULL;
    }

    // Find the second last node 
    NODE* temp = head;

    while (temp->next->next != NULL)
        temp = temp->next;

    // Delete last node 
    delete (temp->next);

    // Change next of second last 
    temp->next = NULL;

    return head;

}
```
##### **Remove by index**
```cs
void deleteNode (NODE** head, int key)
{
	NODE* temp = *head;
	NODE* prev = NULL;
	
	// If head node itself holds, the key to be deleted
	if (temp != NULL && temp->data == key)
	{
	   head = temp->next; // Changed head
	   delete temp;       // free old head
	   return;
	}
	else
	{
		while (temp != NULL && temp->data != key)
		{
			prev = temp;
			temp = temp->next;
		}
		
		if (temp == NULL)
			return;
		
		prev->next = temp->next;
		delete temp;
	}
}
```


## 2. Circular Linked List
#### Insertion
##### **Insert with no elements**
```cs
NODE* insertInEmpty(NODE* tail, int newData)
{
	// If tail is not null then list is not empty, so return
	if (tail != NULL)
	    return tail;
	
	// Allocate memory for node
	NODE* temp = new NODE;
	
	// Assign the data.
	temp->data = newData;
	tail = temp;
	
	// Create the link.
	tail->next = tail;
	
	return tail;
}
```
##### **Append**
```cs
NODE* append(NODE* tail, int newData)
{
	// If list is empty then add the node  
	// by calling insertInEmpty
	if (tail == NULL)
		return insertInEmpty(tail, newData);
	
	// Else create a new node
	NODE* temp = new NODE;
	
	// Assign data to new node
	temp->data = newData;
	temp->next = tail->next;
	tail->next = temp;
	tail = temp;
	
	return tail;
}
```
##### **Prepend**
```cs
NODE* prepend(NODE* tail, int newData)
{
	// If list is empty then add the node  
	// by calling insertNode
	if (tail == NULL)
		return insertInEmpty(tail, newData);
	
	// Else create a new node
	NODE* temp = new NODE;
	
	// Set new data to node
	temp->data = newData;
	temp->next = tail->next;
	tail->next = temp;
	
	return tail;
}](<1. Lorem ipsum dolor
	- Lorem ipsum dolor
		- Lorem ipsum dolor
2. Lorem ipsum dolor
	- Lorem ipsum dolor
	- [ ] Lorem ipsum dolorLorem ipsum dolor

[LOREM](https://loremipsum.io/generator/?n=5&t=p)

`Lorem()`

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

`Lorem()`

Lorem ipsum dolor sit amet, consectetur.

| A   | B   | XOR |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |>)