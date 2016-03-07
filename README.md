# Vagrant Packer plugin

## What Is
Vagrant Packer plugin allows to compose Packer templates and run them using vagrant and `Vagrantfile`; it also helps using Chef as provisioner.

## Install
- Install [Vagrant(1.8.1+)](https://www.vagrantup.com/downloads.html)
- Install [Packer (0.8.6+)](https://www.packer.io/downloads.html)
- `vagrant plugin install vagrant-packer-plugin`

## Configure
Define the following `Vagrantfile`

```
Vagrant.configure("2") do |config|
  # Mandatory Vagrant Packer Plugin configuration
  config.packer_build.instance_templates = ["<instance_template_json_path>"]
  
  #Optional Chef provisioning configuration
  config.packer_build.cookbooks_url = "<berks_generated_cookbooks_tar_gz_url>"
  
  #Alternative for Chef cookbooks configuration (using Berkshelf)
  config.packer_build.berksfile = "<berksfile_path>"
  
  #Chef Databags configuration
  config.packer_build.databags_url = "<databags_tar_gz_url>"
  config.packer_build.databags_username = "<databags_username>"
  config.packer_build.databags_password = "<databags_password>"
  config.packer_build.ks_template = "https://raw.githubusercontent.com/Alfresco/alfresco-spk/master/ks/ks-centos.cfg"
end
```


## Run
`vagrant packer-build` from the same folder of your `Vagrantfile`.

Type `vagrant packer-build -h` for more info on configuration.

## Build
- Clone this repository
- `rm Gemfile.lock ; bundle ; rake build ; vagrant plugin install pkg/vagrant-packer-plugin-0.8.0.gem`

## Contribute

- Fork this project
- Code/build your feature
- Open Pull Requests only to *develop* please, as we want master to be the release branch


