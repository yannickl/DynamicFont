Pod::Spec.new do |s|
  s.name             = 'DynamicFont'
  s.version          = '1.0.0'
  s.license          = 'MIT'
  s.summary          = 'Yet another extension to manipulate fonts easily in Swift'
  s.homepage         = 'https://github.com/yannickl/DynamicFont.git'
  s.social_media_url = 'https://twitter.com/yannickloriot'
  s.authors          = { 'Yannick Loriot' => 'contact@yannickloriot.com' }
  s.source           = { :git => 'https://github.com/yannickl/DynamicFont.git', :tag => s.version }
  s.screenshot       = 'http://yannickloriot.com/resources/dynamicfont-header.png'

  s.ios.deployment_target     = '10.0'
  s.osx.deployment_target     = '10.11'
  s.tvos.deployment_target    = '10.0'
  s.watchos.deployment_target = '3.0'

  s.ios.framework     = 'UIKit'
  s.osx.framework     = 'AppKit'
  s.tvos.framework    = 'UIKit'
  s.watchos.framework = 'UIKit'

  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
end
