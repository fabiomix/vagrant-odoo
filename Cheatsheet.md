# Vagrant Cheatsheet
Typing `vagrant` from the command line will display a list of all available commands.

## General

    vagrant -v                       # Display Vagrant version
    vagrant status                   # Outputs status of the vagrant machine
    vagrant global-status            # Outputs status of all vagrant machines
    vagrant global-status --prune    # Same as above, but prunes invalid entries

## Managing VMs

    vagrant init                 # Initializes a new Vagrant environment
    vagrant up                   # Starts the vagrant environment
    vagrant halt                 # Stops the vagrant machine
    vagrant suspend              # Suspends a virtual machine (remembers state)
    vagrant resume               # Resume a suspended machine (vagrant up works as well)
    vagrant ssh                  # Connects to machine via SSH
    vagrant destroy              # Stops and deletes all traces of the vagrant machine
    vagrant destroy -f           # Same as above, without confirmation
    vagrant provision            # Forces reprovisioning of the vagrant machine
    vagrant provision --debug    # Use the debug flag to increase the verbosity of the output

## Manage Boxes

    vagrant box list                # See a list of all installed boxes on your computer
    vagrant box add <name> <url>    # Download a box image to your computer
    vagrant box outdated            # Check for updates vagrant box update
    vagrant box remove <name>       # Deletes a box from the machine
