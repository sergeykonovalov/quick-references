# Vagrant Quick Reference

## Handy Commands

Check version of Vagrant:

```sh
vagrant --version
```

## Manage Boxes

- Boxes are snapshots of virtual machines, used as templates.
- Boxes are TAR file.
- Vagrant manages boxes globally _per user_.
- Default folder for boxes is `~/vagrant.d/`.

Add box:

```sh
vagrant box add "xenial64"
```
List available boxes:

```sh
vagrant box list
```

Remove box:
```sh
vagrant box remove "xenial64"
```

## Starting Vagrant

```sh
vagrant up
```
Provisioning only happens **once** when `vagran up` command is launched for first time. To refine already provisioned machine, explicitly halt the machine and run:

```sh
vagrant up --provision
```

## Login to Vagrant

- Default SSH password for any Vagrant machine is "vagrant".

To start SSH session:

```sh
vagrant ssh
```

## Destroy Virtual Machine

```sh
vagrant destroy
```

## Syncing folders

- By default project folder is synced to guest folder `/vagrant/` during startup.
- Files on shared folder are **not** deleted when destroying VM.
- Sharing is possible only for host OS folders, which existed *before* launch of Vagrant.

## Networking

- Done automatically.
- Developer can assign port forwarding manually.

> Remember to run `vagrant reload` after configuration modification.

## Manage States

- Simple commands to `suspend`, `halt` and `destroy`.
- Suspend is "freezing time" in VM; allows quickly clean up and resume; it is a snapshot of a VM.
- Suspending takes space on disk.
- Halt is a regular shutdown, but developer can also use `vagrant halt --force`.
