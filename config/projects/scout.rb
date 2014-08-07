name 'scout'
maintainer 'Ben Snape'
homepage 'https://scoutapp.com/'

install_dir     '/opt/scout'
build_version   Omnibus::BuildVersion.semver
build_iteration 1

override :ruby, version: '2.1.2'
override :rubygems, version: '2.2.1'

# creates required build directories
dependency 'preparation'

# version manifest file
dependency 'version-manifest'

dependency 'scout'

exclude '\.git*'
exclude 'bundler\/git'
