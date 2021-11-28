#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint umshare.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'umshare'
  s.version          = '0.1.2'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :git => 'git@github.com:XHL-Mao/flutter-umshare.git', :tag => s.version.to_s }
  s.source_files = 'Classes/**/*'
  
  s.dependency 'Flutter'
  s.ios.deployment_target = '9.0'
  
  s.static_framework = true
  # s.resource_bundles = {
  #   'UMShareTest' => ['UMShareTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    
  # U-Share SDK UI模块，分享面板
  s.dependency 'UMShare/UI'
  #必须集成，由原来的UMCCommon变为了UMCommon
  s.dependency 'UMCommon'
  #必须集成
  s.dependency 'UMDevice'

  s.dependency 'UMShare/Social/WeChat'
  s.dependency 'UMShare/Social/QQ'
  s.dependency 'UMShare/Social/Sina'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
