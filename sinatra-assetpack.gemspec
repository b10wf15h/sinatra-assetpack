require './lib/sinatra/assetpack/version'

Gem::Specification.new do |s|
  s.name = 'sinatra-assetpack'
  s.version = Sinatra::AssetPack::VERSION
  s.summary = %{Asset packager for Sinatra.}
  s.description = %Q{Package your assets for Sinatra.}
  s.authors = ['Rico Sta. Cruz', 'Jean-Philippe Doyle']
  s.licenses = ['MIT']
  s.email = ['rico@sinefunc.com']
  s.homepage = 'http://github.com/rstacruz/sinatra-assetpack'
  s.files = `git ls-files`.strip.split("\n")
  s.executables = Dir['bin/*'].map { |f| File.basename(f) }
  s.cert_chain  = ['certs/j15e.pem']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
  s.required_ruby_version = '>= 1.9.2'

  s.post_install_message = <<-POST_INSTALL_MESSAGE
##########################################################
# WARNING : sinatra-assetpack is not maintained anymore! #
##########################################################

YOU MIGHT BE EXPOSED TO SECURITY ISSUES & BUGS.

See https://github.com/rstacruz/sinatra-assetpack/issues/197
  POST_INSTALL_MESSAGE

  s.add_dependency 'jsmin'
  s.add_dependency 'rack-test'
  s.add_dependency 'sinatra'
  s.add_dependency 'tilt'

  # Supported preprocessors (each is optional)
  s.add_development_dependency 'coffee-script'
  s.add_development_dependency 'haml'
  s.add_development_dependency 'less'
  s.add_development_dependency 'sass'
  s.add_development_dependency 'stylus'
  s.add_development_dependency 'uglifier'
  s.add_development_dependency 'yui-compressor'
end
