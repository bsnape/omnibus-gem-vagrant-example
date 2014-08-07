name 'scout'
default_version '5.6.9'

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)
  gem "install scout -n #{install_dir}/bin --no-ri --no-rdoc -v #{version}", env: env
end
