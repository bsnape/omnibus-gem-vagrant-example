name 'eir'
default_version 'master'

dependency 'ruby'
dependency 'rubygems'
dependency 'bundler'

source :git => 'https://github.com/bsnape/eir.git'

relative_path 'eir'

build do
  bundle "install --path=#{install_dir}/embedded/service/gem"
  command "mkdir -p #{install_dir}/embedded/service/eir"
  gem "install eir -n #{install_dir}/embedded/service/gem/ --no-rdoc --no-ri"
end
