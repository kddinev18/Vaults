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
Resources, Resource Groups & Resource Manager
# Notes
## Azure Resource

-   Object **used to manage services** in Azure
-   Represents **service lifecycle**
-   Saved as **JSON definition**

## Resource Groups

-   **Grouping** of resources
-   Holds **logically related** resources
-   Typically organizing by
    -   **Type**
    -   **Lifecycle** (app, environment)
    -   **Department**
    -   **Billing**,
    -   **Location** or
    -   **combination of those**

## Resource Manager

-   **Management Layer** for all resources and resource groups
-   **Unified** language
-   **Controls** **access** and **resources**

### Additional Info

-   Each **resource must** be in one, and **only one resource group**
-   Resource **groups have their own location** assigned
-   Resources in the resource groups **can reside in a different locations**
-   Resources **can be moved** between the resource groups
-   Resource **groups can’t be nested**
-   Organize based on your organization needs but consider
    -   Billing
    -   Security and access management
    -   Application Lifecycle
# Test
![[Pasted image 20221218121636.png]]
![[Pasted image 20221218121642.png]]
![[Pasted image 20221218121701.png]]
![[Pasted image 20221218121707.png]]
![[Pasted image 20221218121715.png]]
![[Pasted image 20221218121721.png]]
![[Pasted image 20221218121730.png]]
![[Pasted image 20221218121736.png]]
![[Pasted image 20221218121743.png]]
![[Pasted image 20221218121749.png]]
