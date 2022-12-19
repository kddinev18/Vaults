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
Azure Role-based Access Control (RBAC) & azure resource locks
# Notes
## What is a Role?

**Role** (role definition) is a **collection of actions** that **the assigned identity** will be able to perform.

Role definition is an answer to a question “**What** can be done?”

## What is a Security Principal?

**Security Principal** is an Azure object (identity) that can be assigned to a role (ex. users, groups or applications).

**Security Principal assignment** is an answer to a question “**Who** can do it?”

## What is a Scope?

**Scope** is one or more Azure resources that the access applies to.

**Scope assignment** is an answer to a question “**Where** can it be done?”

### What is a Role Assignment?

**Role assignment** is a combination of the **role definition**, **security principal** and **scope**.

## Azure Role-based Access Control (RBAC)

-   Authorization system built on Azure Resource Manager (ARM)
-   Designed for fine-grained access management of Azure Resources
-   Role assignment is combination of
    -   Role definition – list of permissions like create VM, delete SQL, assign permissions, etc.
    -   Security Principal – user, group, service principal and managed identity and
    -   Scope – resource, resource groups, subscription, management group
-   Hierarchical
    -   Management Groups > Subscriptions > Resource Groups > Resources
-   Built-in and Custom roles are supported
## What is an Azure Resource Lock?

-   Designed to **prevent accidental deletion** and/or **modification**
-   Used in conjunction with RBAC
-   Two types of locks
    -   **Read-only** (**ReadOnly**) – only read actions are allowed
    -   **Delete** (**CanNotDelete**) – all actions except delete are allowed
-   Scopes are **hierarchical** (**inherited**)
    -   Subscriptions > Resource Groups > Resources
-   **Management Groups** can’t be locked
-   Only **Owner** and **User Access Administrator** roles can manage locks (**built-in** roles)
# Test
![[Pasted image 20221218182116.png]]
![[Pasted image 20221218182603.png]]
![[Pasted image 20221218182610.png]]
![[Pasted image 20221218182618.png]]
![[Pasted image 20221218182625.png]]
![[Pasted image 20221218182631.png]]
![[Pasted image 20221218182636.png]]
![[Pasted image 20221218182642.png]]
![[Pasted image 20221218182648.png]]
![[Pasted image 20221218182654.png]]
![[Pasted image 20221218182703.png]]
![[Pasted image 20221218182714.png]]
![[Pasted image 20221218183041.png]]
![[Pasted image 20221218183101.png]]
![[Pasted image 20221218183149.png]]
