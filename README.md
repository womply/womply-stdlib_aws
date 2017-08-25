
# stdlib_aws

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with stdlib_aws](#setup)
    * [What stdlib_aws affects](#what-stdlib_aws-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with stdlib_aws](#beginning-with-stdlib_aws)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

`stdlib_aws` is a helper module containing various Puppet extensions to assist with managing resources on AWS.

For now, the only think it contains is the function `stdlib_aws::subnets_from_tag`, which takes a tag, optionally a tag value, and optionally a region (uses default region otherwise), and returns a list of subnet IDs for all AWS subnets tagged as described.

## Setup

### Setup Requirements

1. Install AWS Ruby SDK into Puppet's Ruby on the master if it's not already present.
    * `/opt/puppetlabs/puppet/bin/gem install aws-sdk`
2. Configure credentials for the gem in one of the usual ways.
    * See: https://docs.aws.amazon.com/sdk-for-ruby/v2/developer-guide/setup-config.html

### Beginning with stdlib_aws

Use the functions! :D


## Usage

This section is where you describe how to customize, configure, and do the fancy stuff with your module here. It's especially helpful if you include usage examples and code samples for doing things with your module.

## Reference

### Viewing Docs
[![puppetmodule.info docs](http://www.puppetmodule.info/images/badge.png)](http://www.puppetmodule.info/m/womply-stdlib_aws)



**NB:** puppetmodule.info is updated hourly, so please be patient after a new release!
### Building Docs
1. `git clone https://github.com/womply/womply-stdlib_aws.git`
2. `cd womply-stdlib_aws`
3. `bundle install`
4. `puppet strings generate lib/puppet/functions`
5. Open `index.html` in the `docs/` subdirectory.

## Limitations

None known.

## Development

For now, just fork and make a PR!

### Guidelines

  * Functions should be in-DSL rather than with Ruby when possible. If you're not sure which to use...ask!
    * https://docs.puppet.com/puppet/latest/lang_write_functions_in_puppet.html

## Release Notes/Contributors/Etc. **Optional**

  * [pizzaops](https://github.com/pizzaops)
