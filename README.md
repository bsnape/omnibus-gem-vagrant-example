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

This provides an Omnibus build environment (it may take a while - about 8m on a MacBook Air).

When that finishes, login to the VM.

```bash
$ bin/kitchen login [default-centos-65]
```

You should be in the home (`/home/vagrant`) directory

```bash
$ pwd
/home/vagrant

$ ls
load-omnibus-toolchain.sh  scout  sign-rpm
```

Navigate to the `scout` directory

```bash
$ cd scout
```

Install the dependencies on the VM (again, this takes a while):

```bash
$ bundle install --binstubs
```

Now let's build our Omnibus package (yep this takes a while too):

```bash
$ bin/omnibus build scout
```

Once that's finished, two things should have happened:

- an RPM now exists in your project `/pkg` directory (symlinked to the VM at `/home/vagrant/scout/pkg`)
- the RPM has been installed automatically to `/opt/scout`
