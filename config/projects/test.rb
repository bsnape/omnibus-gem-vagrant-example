
name 'test'
maintainer 'CHANGE ME'
homepage 'https://CHANGE-ME.com'

install_dir     '/opt/test'
build_version   Omnibus::BuildVersion.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# version manifest file
dependency 'version-manifest'

# test dependencies/components
dependency 'eir'

exclude '\.git*'
exclude 'bundler\/git'
