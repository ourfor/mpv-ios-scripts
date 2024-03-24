Pod::Spec.new do |s|
  s.name             = 'uchardet'
  s.version          = '0.0.6'
  s.authors          = 'uchardet'
  s.license          = { :type => 'Apache' }
  s.homepage         = 'https://github.com/uchardet/uchardet.git'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/MPVKit/MPVKit_0.31.0.tar" }
  s.summary          = 'uchardet'
  s.description      = <<-DESC
  uchardet
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '11.0'

  s.module_name = 'mpv'
  s.library = 'c++', 'resolv'
  s.static_framework = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.ios.vendored_frameworks = 'Frameworks/uchardet.xcframework'

end
