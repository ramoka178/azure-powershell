<!-- region Generated -->
# Az.ServiceGroup
This directory contains the PowerShell module for the ServiceGroup service.

---
## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 2.7.5 or greater

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Az.ServiceGroup`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

```yaml
# pin the swagger version by using the commit id instead of branch name
commit: a06d231c9d376a219d9ff0053e7e1e98d60afa34
tag: package-2024-02-preview
require:
# readme.azure.noprofile.md is the common configuration file
  - $(this-folder)/../../readme.azure.noprofile.md
input-file:
  - $(repo)/specification/managementgroups/resource-manager/Microsoft.Management/preview/2024-02-01-preview/serviceGroups.json

try-require: 
  - $(repo)/specification/managementgroups/resource-manager/readme.powershell.md

root-module-name: $(prefix).Resources
title: ServiceGroup
namespace: Microsoft.Azure.PowerShell.Cmdlets.Resources.ServiceGroup
subject-prefix: 'ServiceGroup'

# The next three configurations are exclusive to v3, and in v4, they are activated by default. If you are still using v3, please uncomment them.
# identity-correction-for-post: true
# resourcegroup-append: true
# nested-object-to-string: true

directive:
  # Following are common directives which are normally required in all the RPs
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required
  # Following two directives are v4 specific
  - where:
      variant: ^(Create|Update)(?!.*?(Expanded|JsonFilePath|JsonString))
    remove: true
  - where:
      variant: .*ViaIdentity.*$
    remove: true
  - where:
      variant: .*ViaJsonFilePath.*$
    remove: true
  - where:
      variant: .*ViaJsonString.*$
    remove: true

  # Remove the set-* cmdlet
  - where:
      verb: Set
    remove: true
```
