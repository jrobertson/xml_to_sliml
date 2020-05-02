Gem::Specification.new do |s|
  s.name = 'xml_to_sliml'
  s.version = '0.1.2'
  s.summary = 'Transforms XML into Sliml.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/xml_to_sliml.rb']
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.5') 
  s.signing_key = '../privatekeys/xml_to_sliml.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/xml_to_sliml'
end
