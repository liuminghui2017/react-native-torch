require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-torch'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = "https://github.com/liuminghui2017/react-native-torch"
  s.source         = { :git => 'https://github.com/liuminghui2017/react-native-torch.git' }

  s.requires_arc   = true
  s.platform       = :ios, '8.0'

  s.preserve_paths = 'CHANGELOG.md', 'LICENSE', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'

  s.dependency 'React'
end
