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
Azure Identity Services & security center & Azure Key Vault
# Notes
### Authentication

The process of **verification/assertion of identity**

### Authorization

The process of **ensuring** that only **authenticated identities** get **access to the resources** for which they have been granted access.

### Access Management

The process of **controlling**, **verifying**, **tracking** and **managing access** to authorized users and applications.

## Azure Active Directory

-   Identity and Access Management service in Azure
-   Identities management – users, groups, applications
-   Access management – subscriptions, resource groups, roles, role assignments, authentication & authorization settings, etc.
-   Used by multiple Microsoft cloud platforms
    -   Azure
    -   Microsoft 365
    -   Office 365
    -   Live.com services (Skype, OneDrive, etc.)

### Multi-factor Authentication (MFA)

-   Process of authentication using more than one factor (evidence) to prove identity
-   Factor types
    -   Knowledge Factor – “Something you know”, ex. password, pin
    -   Possession Factor – “Something you have”, ex. phone, token, card, key
    -   Physical Characteristic Factor – “Something you are”, ex. fingerprint, voice, face, eye iris
    -   Location Factor – “Somewhere you are”, ex. GPS location
-   Supported by Azure AD by default (simple on-off switch)
## Azure Key Vault

-   **Managed service** for **securing sensitive information** (application/platform) (PaaS)
-   **Secure storage service** for
    -   **Keys**,
    -   **Secrets** and
    -   **Certificates**
-   **Highly integrated** with other Azure services (VMs, Logic Apps, Data Factory, Web Apps, etc.)
-   **Centralization**
-   Access **monitoring** and **logging**
# Test
![[Pasted image 20221218174659.png]]
![[Pasted image 20221218174712.png]]
![[Pasted image 20221218175019.png]]
![[Pasted image 20221218180152.png]]
![[Pasted image 20221218180214.png]]
![[Pasted image 20221218180239.png]]
![[Pasted image 20221218180250.png]]
![[Pasted image 20221218181014.png]]
![[Pasted image 20221218181044.png]]
![[Pasted image 20221218181101.png]]
![[Pasted image 20221218181115.png]]
![[Pasted image 20221218181135.png]]
