require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorIdnow'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Sources/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target = '14.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
  s.ios.vendored_frameworks = [
    'ios/Frameworks/IDNowSDKCore.xcframework',
    'ios/Frameworks/UnisseySdk.xcframework',
    'ios/Frameworks/FaceTecSDK.xcframework'
  ]
  s.preserve_paths = [
    'ios/Frameworks/IDNowSDKCore.xcframework',
    'ios/Frameworks/UnisseySdk.xcframework',
    'ios/Frameworks/FaceTecSDK.xcframework'
  ]
  s.frameworks = 'AVFoundation', 'WebKit', 'Accelerate', 'CoreMedia', 'CoreVideo', 'SystemConfiguration', 'Security'
  s.static_framework = true
end
