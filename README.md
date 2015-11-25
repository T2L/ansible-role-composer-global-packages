# Ansible Role: Composer global packages

Installs globally-required Composer packages.

## Requirements

`Composer` should be installed and working.

## Role Variables

Available variables are listed below, along with default values
(see `defaults/main.yml`):

Composer executable filename:

    composer_filename: composer

Composer installs globally-required packages on behalf of acting user (usually
root). In order to install packages for someone else, set this variable.
Defaults to system fact `ansible_user_id`.

    composer_username: ""

A list of packages to install globally. For each package the following
attributes can be specified:
  'name' - Required. Name of the package.
  'version' - Optional. Version of the package. Defaults to "@stable".

    composer_global_packages: []

Example (do not forget to remove square brackets):

    composer_global_packages:
      - name: phpunit/phpunit
        version: "4.7.x"

## Dependencies

    T2L.composer

## Example Playbook

    - hosts: all
      roles:
        - T2L.composer-global-packages

## License

MIT

## Author Information

This role was created in 2015 by Roman Paska.
