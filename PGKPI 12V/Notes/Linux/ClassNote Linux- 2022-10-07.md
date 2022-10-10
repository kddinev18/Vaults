---
tags: [classnote, linux, OS, operatingsystems]
creation date: 2022-10-07 16:19
modification date: 2022-10-07 16:19
---

Links: [[Linux - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Linux
2022-10-07

Operating Systems
# Notes
## 1. What is OS
An operating system is software that runs on a computing device and manages the hardware and software components that make up a functional computing system.
Every OS is managed by some type of karnel
```ad-attention
title: IMPORTANT
The kernel decides which program gets which blocks of memory, it starts and kills applications, and it handles displaying text or graphics on a monitor.
```
## 2. Karnel
Applications make requests to the kernel and in return receive resources, such as memory, CPU, and disk space. If two applications request the same resource, the kernel decides which one gets it, and in some cases, kills off another application to save the rest of the system and prevent a crash.

The kernel also abstracts some complicated details away from the application. For example, the application doesn’t know if a block of disk storage is on a solid-state drive, a spinning metal hard disk, or even a network file share. Applications need only follow the kernel’s Application Programming Interface (API) and therefore don’t have to worry about the implementation details. Each application behaves as if it has a large block of memory on the system; the kernel maintains this illusion by remapping smaller blocks of memory, sharing blocks of memory with other applications, or even swapping out untouched blocks to disk.

The kernel also handles the switching of applications, a process known as multitasking. A computer system has a small number of central processing units (CPUs) and a finite amount of memory. The kernel takes care of unloading one task and loading a new one if there is more demand than resources available. When one task has run for a specified amount of time, the CPU pauses it so that another may run. If the computer is doing several tasks at once, the kernel is deciding when to switch focus between tasks. With the tasks rapidly switching, it appears that the computer is doing many things at once.

## 3. Servers
Linux excels at running server applications because of its reliability and efficiency. The ability to optimize server operating systems with just needed components allows administrators to do more with less, a feature loved by startups and large enterprises alike.

#### **1. Web Servers**
```ad-note
title: Definition
A web server hosts content for web pages, which are viewed by a web browser using the **HyperText Transfer Protocol (HTTP)** or its encrypted flavor, **HTTPS**.
```
##### **a) Static web pages**
When the web browser requests a static page, the web server sends the file as it appears on disk.
##### **b) Dynamic web pages**
In the case of a dynamic site, the request is sent by the web server to an application, which generates the content.
##### **c) Examples**
- WordPress
- Apache
- NGINX

#### **2. Private Cloud Servers**
- ownCloud
- Nextcloud

#### **3. Database Servers**
- MariaDB
- MySQL

#### **4. Email Servers**
When discussing email servers, it is always helpful to look at the 3 different tasks required to get email between people.

- Mail Transfer Agent (MTA) - software that is used to transfer electronic messages to other systems
- Mail Delivery Agent (MDA) - takes care of storing the email in the user’s mailbox. Usually invoked from the final MTA in the chain.
- [POP/IMAP](obsidian://open?vault=PGKPI%2012V&file=Notes%2FInternet%20Programing%2FClassNote%20Internet%20Programing%20-%202022-09-29) Server - communication protocols that let an email client running on your computer talk to a remote server to pick up the email
#### **5. File Sharing**
For Windows-centric file sharing, **Samba** is the clear winner. Samba allows a Linux machine to look and behave like a Windows machine so that it can share files and participate in a Windows domain. Samba implements the server components, such as making files available for sharing and certain Windows server roles, and also the client end so that a Linux machine may consume a Windows file share.

#### **6. Shells**
At the basic level, users interact with a Linux system through a shell whether connecting to the system remotely or from an attached keyboard. The shell’s job is to accept commands, like file manipulations and starting applications, and to pass those to the Linux kernel for execution. ‌⁠

Linux offers a variety of shells to choose from, mostly differing in how and what can be customized, and the syntax of the built-in scripting language. The two main families are the 
- Bourne shell
- C shell
- Bourne Again Shell (Bash)

Bash is the default shell on most systems, though tcsh is also typically available.

#### **7. Package Management**
Every Linux system needs to add, remove, and update software. Modern distributions use packages, which are compressed files that bundle up an application and its dependencies.

A package manager takes care of keeping track of which files belong to which package and even downloading updates from repositories

The lowest-level tool for managing these files is the `dpkg` command. This command can be tricky for novice Linux users, so the **Advanced Package Tool**, `apt-get` (a front-end program to the `dpkg` tool), makes management of packages easier. Additional command line tools which serve as front-ends to `dpkg` include `aptitude` and GUI front-ends like **Synaptic** and **Software Center**.

```ad-note
title: How to remember
d + the first 3 letters of the email of your system administrator ;)
```