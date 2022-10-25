---
tags: [classnote, IP, server]
creation date: 2022-10-20 25:54
modification date: 2022-10-25 21:54
---
Links: [[Internet Programming - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Inthernet Programing
2022-09-25
# Notes
## 1. Caching
Cashe: To store data as a collection, hidden so it can't be accessed
```ad-note
title: What is caching
To store files in temp directory so that they can be accessed easily
```

- Private 
Caching for a single user
Saves on Windows in temporary internet files (like cookies)

- Public
Caching for multiple users (company, etc...)

```ad-note
title: Note
Cache only save methods (like GET)
DO NOT CACHE UNSAVE METHODS (like POST)
```

![[Pasted image 20221025092903.png]]

## 2. States
Stateful and stateless:
- Stateful - previous operation are logged so the next operation will be affected by the previous one
- Stateless - previous operation are not logged so the next operation will not be affected by the previous one

```ad-note
tile: Note
Stateless handles crashes well, whearas statless don't
```

HTTP is stateless, although most of the application in the web are stateful

## 3. Cookies
Small data that helps the browser indentifies you
```ad-note
title: Note
Cookies is what remembers that you have logged in youtube and have clicked clicked sign automatically
```

They are there only there to make you browser experience for improoving experience

![[Pasted image 20221025095119.png]]
## 4. Authentication vs Autherisation
![[Pasted image 20221025095436.png]]

![[Pasted image 20221025095946.png]]

## 5. HTTPS
![[Pasted image 20221025100221.png]]

Everything is cryped expect the host. Only the client know how to decrypt an HTTPS response message. And only the server knows how to decrypt a request message

![[Pasted image 20221025100456.png]]

![[Pasted image 20221025101141.png]]