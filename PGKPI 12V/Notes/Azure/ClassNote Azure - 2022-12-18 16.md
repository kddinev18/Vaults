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
Azure Security Groups & user defined routes & firewall & DDoS
# Notes
## Network Security Groups

-   Designed to **filter traffic** to (inbound) and from (outbound) Azure resources located in - Azure Virtual Network
-   Filtering controlled by **rules**
-   Ability to have **multiple** inbound and outbound **rules**
-   Rules are created by specifying
    -   **Source**/**Destination** (IP addresses, service tags, application security groups)
    -   **Protocol** (TCP, UDP, any)
    -   **Port** (or Port Ranges, ex. 3389 – RDP, 22 – SSH, 80 HTTP, 443 HTTPS)
    -   **Direction** (inbound or outbound)
    -   **Priority** (order of evaluation)

## Application Security Groups

-   Feature that allows **grouping of virtual machines** located in Azure virtual network
-   Designed to **reduce** the **maintenance effort** (assign ASG instead of the explicit IP address)

## User-defined Routes

-   Custom (user-defined, static) routes (UDRs)
-   Designed to override Azure’s default routing or add new routes
-   Managed via Azure Route Table resource
-   Associated with a zero or more Virtual Network subnets

## Azure Firewall

-   Managed, cloud-based **firewall service** (PaaS, Firewall as a Service)
-   Built-in **high availability**
-   Highly **Scalable**
-   **Inbound** & **outbound** traffic filtering rules
-   Support for **FQDN** (Fully Qualified Domain Name), ex. microsoft.com
-   Fully integrated with Azure monitor for logging and analytics

### DoS - Denial of Service

Cyber-attack with intent to cause temporary or indefinite **disruption of service**

### DDoS - Distributed Denial of Service

**DoS** attack that is originating **from multiple servers**

## Azure DDoS Protection

-   **DDoS protection service** in Azure
-   Designed to
    -   **Detect malicious traffic** **and block it** while allowing legitimate users to connect
    -   **Prevent additional costs** for auto-scaling environments
-   Two tiers
    -   **Basic** – automatically enabled for Azure platform
    -   **Standard** – additional mitigation & monitoring capabilities for Azure Virtual Network resources
-   Standard tier uses machine learning to **analyze traffic patterns** for better accuracy
- 
# Test
![[Pasted image 20221218164944.png]]
![[Pasted image 20221218164955.png]]
![[Pasted image 20221218165004.png]]
![[Pasted image 20221218165012.png]]
![[Pasted image 20221218165018.png]]
![[Pasted image 20221218173033.png]]
![[Pasted image 20221218173039.png]]
![[Pasted image 20221218173046.png]]
![[Pasted image 20221218173055.png]]
![[Pasted image 20221218173402.png]]
![[Pasted image 20221218173423.png]]
![[Pasted image 20221218173436.png]]
![[Pasted image 20221218173901.png]]
