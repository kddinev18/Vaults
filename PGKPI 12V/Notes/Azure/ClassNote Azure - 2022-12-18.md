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
Consumption-based Model
# Notes
# What is a consumption-based model?

The consumption-based model is a **pricing model** used in the cloud so that customers are only charged **based on their resource usage**.

This model is characterized by

- **No associated upfront cost**
- **No wasted resources** as such __no charges are incurred for unused_ resources_*. Unused in this case is different per service. For instance, blob storage that stores any data is considered to be used, as it consumes the storage space. Virtual Machines that are running consume CPU, memory and other resources even if there isn’t any traffic. Hence they are considered to be used and will incur charges.
-   **Pay for what you need**
-   **Stop paying when you don’t**

**Consumption** is the virtual metric used to calculate how much each resource (service) in Azure was used. Each service has many smaller metrics that track its consumption to offer best possible pricing model. Those metrics are tracked on very granular level.
# Test
![[Pasted image 20221218110414.png]]
![[Pasted image 20221218110440.png]]
