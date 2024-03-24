Pod::Spec.new do |s|
  s.name             = 'MPVKit'
  s.version          = '0.31.0'
  s.authors          = 'mpv'
  s.license          = { :type => 'Apache' }
  s.homepage         = 'https://github.com/mpv/mpv'
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/mpvkit-0.31.0/MPVKit-0_31_0.tar" }
  s.summary          = 'TensorFlow Lite'
  s.description      = <<-DESC
  MPVKit is a framework
                       DESC

  s.cocoapods_version = '>= 1.9.0'
  s.ios.deployment_target = '12.0'

  s.module_name = 'MPVKit'
  s.library = 'c++'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386,x86_64,armv7,armv7s'
  }

  # s.default_subspec = 'Core'

  s.subspec 'mpv' do |ss|
    ss.vendored_frameworks = 'Frameworks/mpv.xcframework'
  end

  s.subspec 'ass' do |ss|
    ss.vendored_frameworks = 'Frameworks/ass.xcframework'
  end

  s.subspec 'freetype' do |ss|
    ss.vendored_frameworks = 'Frameworks/freetype.xcframework'
  end

  s.subspec 'fribidi' do |ss|
    ss.vendored_frameworks = 'Frameworks/fribidi.xcframework'
  end

  s.subspec 'harfbuzz' do |ss|
    ss.vendored_frameworks = 'Frameworks/harfbuzz.xcframework'
  end

  s.subspec 'uchardet' do |ss|
    ss.vendored_frameworks = 'Frameworks/uchardet.xcframework'
  end
  
end
