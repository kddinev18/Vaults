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
Geographies, Regions & Availability Zones
# Notes
## Data Center

-   **Physical facility**
-   **Hosting for** group of networked **servers**
-   Own **power**, **cooling** & **networking** infrastructure

## Region

-   **Geographical area** on the planet
-   **One but usually more datacenters** connected with **low-latency network** (<2 milliseconds)
-   **Location** for your services
-   Some services are **available only in certain regions**
-   Some services are **global services**, as such are not assigned/deployed in specific region
-   Globally available with **50+ regions**
-   Special **government regions** (US DoD Central, US Gov Virginia, etc.)
-   Special **partnered regions** (China East, China North)

## Availability Zone

-   **Regional feature**
-   Grouping of **physically separate** facilities
-   Designed to **protect from data center failures**
-   If zone goes down **others continue working**
-   Two service **categories**
    -   **Zonal** services (Virtual Machines, Disks, etc.)
    -   **Zone-redundant** services (SQL, Storage, etc.)
-   **Not** **all** regions are **supported**
-   **Supported** region has **three or more zones**
-   A **zone** is **one or more data centers**

## Region Pair

-   **Each region** is **paired** with another region making it a region pair
-   Region **pairs are static** and cannot be chosen
-   Each pair resides within the **same geography***
    -   Exception is Brazil South
-   **Physical isolation** with at least 300 miles distance (when possible)
-   Some services have **platform-provided replication**
-   **Planned updates** across the pairs
-   **Data residency** maintained for disaster recovery
## Geographies

-   **Discrete market**
-   Typically **contains two or more regions**
-   Ensures **data residency**, **sovereignty**, **resiliency**, and **compliance** requirements are met
-   **Fault tolerant** to protect from region wide failures
-   Broken up into areas
    -   **Americas**,
    -   **Europe**,
    -   **Asia Pacific**,
    -   **Middle** **East** and **Africa**
-   Each **region belongs only to one Geography**
# Test
![[Pasted image 20221218114353.png]]
![[Pasted image 20221218114414.png]]
![[Pasted image 20221218114426.png]]
![[Pasted image 20221218114432.png]]
![[Pasted image 20221218114440.png]]
![[Pasted image 20221218114450.png]]
![[Pasted image 20221218114458.png]]
![[Pasted image 20221218114506.png]]