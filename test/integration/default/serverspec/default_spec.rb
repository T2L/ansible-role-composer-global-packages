# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'serverspec'

# Required by serverspec.
set :backend, :exec

# Drush package should exist.
describe file('~/.composer/vendor/drush/drush') do
  it { should be_directory }
end

# Drush command should be available.
describe command('drush') do
  its(:stdout) { should match /Drush version/ }
end
