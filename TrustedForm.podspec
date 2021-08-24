Pod::Spec.new do |s|
  s.name             = 'TrustedForm'
  s.version          = '0.2.2'
  s.summary          = 'TrustedForm is THE platform for consent-based marketing.'

#  s.description      = <<-DESC
#                       DESC

  s.homepage         = 'https://activeprospect.com'
  s.license = { :type => 'Copyright', :text => 'Copyright 2021 ActiveProspect'}
  s.author           = { 'ActiveProspect' => 'support@activeprospect.com' }
  s.platform         = :ios
  s.source           = { :git => 'https://github.com/activeprospect/trustedform-ios-sdk.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.dependency 'Alamofire', '~> 5.4'
  s.ios.vendored_frameworks = "TrustedForm.xcframework"
  
  # https://github.com/CocoaPods/CocoaPods/issues/10104#issuecomment-700918704
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.swift_versions = ['5.0']

end
