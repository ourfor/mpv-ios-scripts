Pod::Spec.new do |s|
  s.name             = 'ffmpeg'
  s.version          = '4.1.11'
  s.summary          = 'ffmpeg'
  s.description      = <<-DESC
ffmpeg
                       DESC

  s.homepage         = 'https://github.com/ffmpeg/ffmpeg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ffmpeg' => 'ourfor@qq.com' }
  s.source           = { :http => "https://github.com/endeny/CocoaPodsSpecs/releases/download/MPVKit/ffmpeg-4.1.11.tar" }

  s.ios.deployment_target = '9.0'
  
  s.vendored_libraries = 'ffmpeg/lib/*.a'
  
  # s.source_files        = 'ffmpeg/include/**/*.h'
  # s.public_header_files = 'ffmpeg/include/**/*.h'
  # s.header_mappings_dir = 'ffmpeg/include'
  
  s.libraries = 'bz2', 'iconv', 'z'
  s.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox', 'AVFoundation'
end