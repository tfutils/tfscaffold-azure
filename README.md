# Overview

See the [tfscaffold readme](https://github.com/tfutils/tfscaffold) for information on tfscaffold this is specifically for the Azure version and the various changes required to make it work there. Additionally this contains elements for the various example components.

## Required mounts

There are a number of required mounts otherwise tfscaffold wont actually know what to do. Note that tfscaffold is /tfscaffold in the container.

- components (your terraform)
- modules (any terraform modules)
- etc (terraform variables)

## Optional mounts

- plugin-cache (terraform plugin-cache)

Plugin-cache isnt required but it will download it every single time if you dont mount this folder.

## Important changes from tfscaffold

app-id, password and tenant are the important changes that have been added over the standard tfscaffold, simply because azure works differently. These are now required when calling tfscaffold.

## Examples

### Bootstrap

Windows

``` powershell
docker run -v C:\git\my_project\tfscaffold\components\:/tfscaffold/components `
           -v C:\git\my_project\tfscaffold\etc\:/tfscaffold/etc `
           -v C:\git\my_project\tfscaffold\modules\:/tfscaffold/modules `
           -v C:\git\my_project\tfscaffold\plugin-cache\:/tfscaffold/plugin-cache `
tfscaffold -a apply -r uksouth -p demo --bootstrap `
--app-id 'some-app-id' `
--password 'some-password' `
--tenant 'some-tenant'
```

Linux

``` bash
docker run -v ~/git/jumpbox/tfscaffold/components/:/tfscaffold/components \
           -v ~/git/jumpbox/tfscaffold/etc/:/tfscaffold/etc \
           -v ~/git/jumpbox/tfscaffold/modules/:/tfscaffold/modules \
           -v ~/git/jumpbox/tfscaffold/plugin-cache/:/tfscaffold/plugin-cache \
mikewinterbjss/tfscaffold -a apply -r uksouth -p changeme --bootstrap \
--app-id 'some-app-id' \
--password 'some-password' \
--tenant 'some-tenant'
```

### Keyvault (plan/apply etc)

Again this is an example but its the core password management function of this piece of work. If you think there is a better way to manage the secrets / passwords etc... feel free to create an example component.

In essence the keyvault is created and a random string generator creates a number of secrets, these are then output into the remote state. The remote state can then be used elsewhere and that way none of the passwords are added to a tf file.

Windoze

``` powershell
docker run -v C:\git\jumpbox\tfscaffold\components\:/tfscaffold/components `
           -v C:\git\jumpbox\tfscaffold\etc\:/tfscaffold/etc `
           -v C:\git\jumpbox\tfscaffold\modules\:/tfscaffold/modules `
           -v C:\git\jumpbox\tfscaffold\plugin-cache\:/tfscaffold/plugin-cache `
mikewinterbjss/tfscaffold -a plan -r uksouth -p changeme -e demo -c keyvault `
--app-id 'some-app-id' `
--password 'some-password' `
--tenant 'some-tenant'
```

Linux

``` powershell
docker run -v ~/git/jumpbox/tfscaffold/components/:/tfscaffold/components \
           -v ~/git/jumpbox/tfscaffold/etc/:/tfscaffold/etc \
           -v ~/git/jumpbox/tfscaffold/modules/:/tfscaffold/modules \
           -v ~/git/jumpbox/tfscaffold/plugin-cache/:/tfscaffold/plugin-cache \
mikewinterbjss/tfscaffold -a plan -r uksouth -p changeme -e demo -c keyvault \
--app-id 'some-app-id' \
--password 'some-password' \
--tenant 'some-tenant'
```
