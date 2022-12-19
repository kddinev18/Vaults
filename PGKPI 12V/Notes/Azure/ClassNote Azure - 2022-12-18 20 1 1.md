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
Cost Affecting Factors & cost savings & Azure Cost Management
# Notes
## Cost Affecting Factors

-   Base Cost
    -   **Resource Types** – All Azure services (resources) have resource-specific pricing models. Typically consisting of one or more metrics.
    -   **Services** – Azure specific offers (Enterprise, Web Direct, CSP, etc.) have different cost and billing components like prepaids, billing cycles, - discounts, etc.
    -   **Location** – running Azure services vary between Azure regions
    -   **Bandwidth** – network traffic when uploading (inbound/ingress) data to Azure or downloading (outbound/egress) from Azure
-   Savings
    -   Reserved Instances
    -   Hybrid Benefits
## Azure Reservations

Purchase Azure services for 1 or 3 years in advance with a significant discounts

-   **Reserved instances** – Azure Virtual Machines
-   **Reserved capacity** – Azure Storage, SQL Database vCores, Databricks DBUs, Cosmos DB RUs
-   **Software plans** – Red Hat, Red Hat OpenShift, SUSE Linux, etc.
-   **Reservations** are made for 1 or 3 years

## Azure Spot VMs

Purchase unused Virtual Machine capacity for significant discount

-   How it works
    -   **Significant dicount** for Azure VMs
    -   **Capacity** can be **taken away at any time**
    -   Customer can **set maximum price** after discount to keep or evict the machine
-   **Best for interruptable workloads** (batch processing, dev/test environments, large compute workloads, non-critical tasks, etc.)

## Hybrid use Benefit

Use existing licenses in the cloud

-   Use existing licenses in the Azure
    -   **Windows Server**
        -   Azure VM
    -   **RedHat**
        -   Azure VM
    -   **SUSE Linux**
        -   Azure VM
    -   **SQL Server**
        -   Azure SQL Database
        -   Azure SQL Managed Instance
        -   Azure SQL Server on VM
        -   Azure Data Factory SQL Server Integration Services

## Tools

-   **Pricing calculator** – estimate the cost of Azure services
    -   Select service
    -   Adjust parameters (usage)
    -   View the price
-   **Total Cost of Ownership (TCO) calculator** – estimate and compare the cost of running workloads in datacenter versus Azure
    -   Define your workloads
    -   Adjust assumptions
    -   View the report
## Azure Cost Management

-   A centralized service for reporting usage and billing of Azure environment
-   Self-service cost exploration capabilities
-   Budgets & alerts
-   Cost recommendations
-   Automated exports

## Minimizing Costs in Azure

1.  Azure Pricing Calculator to choose the low-cost region
    -   Good latency
    -   All required services are available
    -   Data sovereignty/compliance requirements
2.  Hybrid use benefit and Azure Reservations
3.  Azure Cost Management monitoring, budgets, alerts and recommendations
4.  Understand service lifecycle and automate environments
5.  Use autoscaling features to your advantage
6.  Azure Monitor to find and scale down underutilized resources
7.  Use tags & policies for effective governance
# Test
![[Pasted image 20221218195450.png]]
![[Pasted image 20221218195456.png]]
![[Pasted image 20221218195504.png]]
![[Pasted image 20221218200637.png]]
![[Pasted image 20221218200715.png]]
![[Pasted image 20221218200731.png]]
![[Pasted image 20221218201106.png]]
![[Pasted image 20221218201111.png]]
![[Pasted image 20221218201116.png]]
![[Pasted image 20221218201122.png]]
