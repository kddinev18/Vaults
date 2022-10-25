---
tags: [classnote, IP, server]
creation date: 2022-10-20 21:54
modification date: 2022-10-20 21:54
---
Links: [[Internet Programming - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Inthernet Programing
2022-09-30
# Notes
## 0. MVC
MVC (Model-View-Controller) is **a pattern in software design commonly used to implement user interfaces, data, and controlling logic**. It emphasizes a separation between the software's business logic and display.
## 1. What is API
APIs are mechanisms that enable two software components to communicate with each other using a set of definitions and protocols.
```ad-note
title: note
User uses the app the app uses the API for functionality
```

## 2. HTTP(S) methos
The primary or most-commonly-used HTTP verbs (or methods, as they are properly called) are **POST, GET, PUT, PATCH, and DELETE**. These correspond to create, read, update, and delete (or CRUD) operations, respectively. There are a number of other verbs, too, but are utilized less frequently.

```ad-note
title: note
Get is safe while POST is unsafe
```

## 3. What is a URL
![[Pasted image 20221020091719.png]]

## 4. HTTP Request Messages
HTTP requests are **messages sent by the client to initiate an action on the server**. 
Their start-line contain three elements: An HTTP method, a verb (like GET , PUT or POST ) or a noun (like HEAD or OPTIONS ), that describes the action to be performed.

![[Pasted image 20221020092205.png]]

![[Pasted image 20221020092142.png]]

## 5. Response Message
![[Pasted image 20221020092502.png]]
![[Pasted image 20221020092639.png]]
 
## 5. Status Codes
![[Pasted image 20221020092719.png]]
![[Pasted image 20221020092914.png]]

## 6. HTTP Connections
The OSI Model (Open Systems Interconnection Model) is **a conceptual framework used to describe the functions of a networking system**.
![[Pasted image 20221020093212.png]]

```ad-note
title: note
In data communications **flow control** is the process of managing the rate of data transmission between two nodes to prevent a fast sender from overwhelming a slow receiver.
```

![[Pasted image 20221020093536.png]]

## 7. Types of HTTP Connections
![[Pasted image 20221020095145.png]]

```ad-note
title: note
Pipelinning is Parallel + Persistant connections
```