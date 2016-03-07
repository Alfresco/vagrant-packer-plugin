# Vagrant Packer plugin

## What Is
Vagrant Packer plugin allows to compose Packer templates and run them using vagrant and `Vagrantfile`; it also helps using Chef as provisioner.

## Install
```
vagrant plugin install vagrant-packer-plugin
```

## Build
- Install [Vagrant](https://www.vagrantup.com/downloads.html)
- Install [Packer (0.8.6+)](https://www.packer.io/downloads.html)
- Clone this repository
- From inside this folder, type:
```
rm Gemfile.lock ; bundle ; rake build ; vagrant plugin install pkg/vagrant-packer-plugin-0.5.0.gem
```

## Use
Define the following `Vagrantfile` and run `vagrant packer-build` from the same folder
```
Vagrant.configure("2") do |config|
  config.packer_build.instance_templates = ["instance1.json","instance2.json"]
  config.packer_build.ks_template = "https://raw.githubusercontent.com/Alfresco/alfresco-spk/master/ks/ks-centos.cfg"
end
```

Type `vagrant packer-build -h` for more info on configuration.
