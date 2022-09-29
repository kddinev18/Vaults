---
tags: [classnote, ib=nternetprograming, protocols]
creation date: 2022-09-29 09:24
modification date: 2022-09-29 09:24
---
Links: [[Index]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Internet Programing
2022-09-29

Simple description of the ClassNote content
# Notes
## 1. Internet Protocol (IP)
```ad-note
title: What is IP address
IP addresses are unique identifiers assigned to a device that connects to the internet (example 192.168.1.0)
```
1. **IPv4 vs IPv6**:
	- IPv4 has smaller amount of permutations, therefore IPv6 is longer
2. **IP Packets**:
	- IP packets are created by adding an IP header to each packet of data before its send.
```ad-note
title: IP packets consost of:
-   Header length
-   Packet length
-   Time To Live (TTL), or the amount of network hops a packet can make before its discarded
-   Which transport protocol is used (TCP, UDP)
-   Etc.
```
![[Pasted image 20220929093553.png]]
## 2. Transmission transfer protocol (TCP)
1. **Workflow**
	-   TCP receives the data that needs to be sent
	-   TCP establishes connection with the receiver `handshake`
	-   TCP breaks the information into packets
	-   TCP numbers the packets
	-   TCP sends the packet to the Internet Protocol `IP`
	-   TCP waits for the receiver to confirm the arrival of the packets
	-   If the packets does not arrive TCP resends them
2. **Advantages of TCP**

	-   Reliable
	-   Makes sure that the data arrived
	-   Error-checking mechanism
	-   Flow control
	-   It can send and/or receive data
```ad-note
title: Flow control
although the receiver is one it sends the packets through different routes
```

1. **How does the `Handshake` work**

![[Pasted image 20220929094137.png]]
## 3. User Datagram Protocol (UDP)
1. **How does UDP work**
	-   UDP sends packets directly to the target
	-   UDP doesn't establish a connection
	-   UDP doesn't indicate the order of packets
	-   UDP doesn't check if the packets have arrived
```ad-note
title: TCP VS UDP
Therefore UDP is faster then TCP but less reliable.
```
## 4.  Secure Socket Layer (SSL/TLS)
```ad-summary
title: SSL
- SSL encrypts data that is transmitted across the web
- SSL initiates an authentication process called a `handshake` between two communicating devices to ensure that both devices are really who they claim to be
- SSL also digitally signs data in order to provide `data integrity`, verifying that the data is not tampered with before reaching its intended recipient.
```
## 5. Simple Main Transfer Protocol (SMTP)
SMTP maintains only delivery to the mail-gateway host

```ad-note
title: Bote
Each message of the SMTP contains the following fields:
-   Header
-   Contents
```
```ad-warning
RAW SMTP SUPORTS ONLY ASCII
```
## 6. Post Office Protocol (POP)
POP works by contacting your email service and downloading all of your new messages from it. Once they are downloaded onto your PC or Mac, they are deleted from the email service. This means that after the email is downloaded, it can only be accessed using the same computer. If you try to access your email from a different device, the messages that have been previously downloaded won't be available to you.
1. **Workflow**

![[Pasted image 20220929100428.png]]
```ad-note
title: Note
Sent mail is stored locally on your PC or Mac, not on the email server.
```
## 7. Internet Message Access Protocol (IMAP)
IMAP allows you to access your email wherever you are, from any device. When you read an email message using IMAP, you aren't actually downloading or storing it on your computer; instead, you're reading it from the email service. As a result, you can check your email from different devices, anywhere in the world

```ad-caution
title: note
IMAP only downloads a message when you click on it, and attachments aren't automatically downloaded. This way you're able to check your messages a lot more quickly than POP.
```
## 8.  Hyper Text Transfer Protocol (HTTP) - The foundation of WWW

1. **What's in an HTTP request**
	-   Each request consists of:
		-   HTTP version type
		-   URL
		-   HTTP method
		-   HTTP request headers
		-   HTTP body (optional)

1.  **What's HTTP method - indicates the action that the request expect from the server**
	-   GET - expect information from the server
	-   POST - submitting information to the server
2. **What are HTTP request headers?**
	-   They are organised as key-value pairs
3. **What's in an HTTP request body**
	-   Contains any information being submitted to the web server
	-   What's in an HTTP response - What clients receive from the server
	-   HTTP status code
	-   HTTP response headers
	-   HTTP body (optional)
4. **What's an HTTP status code**
```
3-digit code, most often used to indicate whether an HTTP request has been successfully completed
```
6. What's an HTTP response headers
	-   They are organised as key-value pairs
	-   What's in an HTTP response body
```ad-note
title: Note
Successful HTTP responses to ‘GET’ requests generally have a body which contains the requested information.
```
## 9. Domain Name System (DNS)

```ad-summary
title: Note
IP addresses are of numerical format and hence they are not easily readable or remember-able to humans. DNS is a hierarchical system that converts these IP addresses into a human-readable hostname.
```
## 10. File Transfer Protocol (FTP)
```
used to communicate and transfer files between computers on a TCP/IP network
```
-   FTP connection needs two parties to establish and communicate on the network
-   There are two distinct communication channels
-   Command channel
-   Data channel
## 11. Open shortest path first (OSPF) 
```
used to find the best path between the source and the destination router
```

1. **OSPF messages**
	-   Hello message –   
	    These are keep-alive messages used for neighbor discovery /recovery. These are exchanged every 10 seconds. This includes the following information: Router I’d, Hello/dead interval, Area I’d, Router priority, DR and BDR IP address, authentication data. 
	-   Database Description (DBD) –   
	    It is the OSPF route of the router. This contains the topology of an AS or an area (routing domain). 
	-   Link state request (LSR) –   
	    When a router receives DBD, it compares it with its own DBD. If the DBD received has some more updates than its own DBD then LSR is being sent to its neighbor. 
	-   Link state update (LSU) –   
	    When a router receives LSR, it responds with an LSU message containing the details requested. 
	-   Link state acknowledgement –   
	    This provides reliability to the link-state exchange process. It is sent as the acknowledgement of LSU. 
	-   Link state advertisement (LSA) –   
	    It is an OSPF data packet that contains link-state routing information, shared only with the routers to which adjacency has been formed.