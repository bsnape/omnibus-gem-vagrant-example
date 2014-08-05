# omnibus-gem-vagrant-example

An example of how to use [Omnibus](https://github.com/opscode/omnibus) with Vagrant
(via [Test Kitchen](http://kitchen.ci/docs/getting-started/)) to package a custom gem.

## Usage

Install the dependencies:

```bash
$ bundle install --binstubs
```

Use `test-kitchen` to converge the CentOS 6.5 VM:

```bash
$ bin/kitchen converge [default-centos-65]
```

N.B. [default-centos-65] is optional because it is the only VM defined in `.kitchen.yml`

This provides an Omnibus build environment (it may take a while - about 8m on my MacBook Air).

When that finishes, login to the VM.

```bash
$ bin/kitchen login [default-centos-65]
```
