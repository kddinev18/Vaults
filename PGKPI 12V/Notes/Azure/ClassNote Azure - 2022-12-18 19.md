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
Azure Resource Tags & Azure Policy & Azure Blueprints
# Notes
## Azure Resource Tags

-   Tags are simple **Name** (key) - **Value** **pairs**
-   Designed to help with **organization of Azure resources**
-   Used for resource **governance**, **security**, **operations management**, **cost management**, **automation**, etc.
-   Typical **tagging strategies**
    -   **Functional** – mark by **function** ( ex: environment = production )
    -   **Classification** – mark by **policies used** ( ex: classification = restricted )
    -   **Finance**/**Accounting** – mark for **billing purposes** ( ex: department = finance )
    -   **Partnership** – mark by **association of users/groups** ( ex: owner = adam )
-   Applicable for **resources**, **resource groups** and **subscriptions**
-   **NOT inherited** by default

## Azure Policy

-   Designed to help with resource **governance**, **security**, **compliance**, **cost management**, etc.
-   **Policies** focus on **resource properties** (**RBAC** focused on **user actions**)
-   Policy **definition** – Defines what should happen
    -   Define the **condition** (if/else) and the **effect** (deny, audit, append, modify, etc.)
    -   Examples include allowed _resource types_, _allowed locations_, _allowed SKUs_, _inherit resource tags_
-   **Built-in** and **custom** policies are supported
-   Policy **initiative** – a **group** of policy definitions
-   Policy **assignment** – assignment of a policy definition/initiative to a scope
    -   Scopes can be assigned to
        -   management groups,
        -   subscriptions,
        -   resource groups, and
        -   resources
-   Policies allow for **exclusions of scopes**
-   Checked during **resource creation** or **updates** and **existing ones with remediation tasks**
## Azure Blueprints

-   **Package** of various Azure components (**artifacts**)
    -   **Resource Groups**
    -   **ARM Templates**
    -   **Policy Assignments**
    -   **Role Assignments**
-   **Centralized storage** for organizationally **approved design patterns**
-   Blueprint **definition** – describing what should happen (reusable package)
-   Blueprint **assignment** – describing where it should happen (package deployment)
# Test
![[Pasted image 20221218183801.png]]
![[Pasted image 20221218183823.png]]
![[Pasted image 20221218183859.png]]
![[Pasted image 20221218184011.png]]
![[Pasted image 20221218184509.png]]
![[Pasted image 20221218184559.png]]
![[Pasted image 20221218184628.png]]
![[Pasted image 20221218184644.png]]
![[Pasted image 20221218184739.png]]
![[Pasted image 20221218185308.png]]
![[Pasted image 20221218185324.png]]
![[Pasted image 20221218185346.png]]
![[Pasted image 20221218185425.png]]
![[Pasted image 20221218185440.png]]
