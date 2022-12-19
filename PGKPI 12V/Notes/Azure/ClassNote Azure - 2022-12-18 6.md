---
tags: [classnote, azure]
creation date: 2022-12-18 18:11
modification date: 2022-12-18 17:11
---

Links: [[Azure - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Azure
2022-12-18
Networking Services
# Notes
## Azure Networking

-   Connect cloud and on-premises
-   On-premise networking functionality

### Azure Virtual Network

-   Logically isolated networking components
-   Segmented into one or more subnets
-   Subnets are discrete sections
-   Enable communication of resources with each-other, internet and on-premises
-   Scoped to a single region
-   VNet peering allow cross region communication
-   Isolation, Segmentation, Communication, Filtering, Routing

### Azure Load Balancer

-   Even traffic distribution
-   Supports both inbound and outbound scenarios
-   High-availability scenarios
-   Both TCP (transmission control protocol) and UDP (user datagram protocol) applications
-   Internal and External traffic
-   Port Forwarding
-   High scale with up to millions of flows

### VPN Gateway

-   Specific type of virtual network gateway for on-premises to azure traffic over the public internet

### Application Gateway

-   Web traffic load balancer
-   Web application firewall
-   Redirection
-   Session affinity
-   URL Routing
-   SSL termination

### Content Delivery Network

-   Define content
-   Minimize latency
-   POP (points of presence) with many locations
# Test
![[Pasted image 20221218131652.png]]
![[Pasted image 20221218131658.png]]
![[Pasted image 20221218131704.png]]
![[Pasted image 20221218131710.png]]
![[Pasted image 20221218131726.png]]