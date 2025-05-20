Pod::Spec.new do |s|

  s.name         = "zolozkit"
  s.version      = "1.5.2.250331153849-xcframework"
  s.summary      = "ZOLOZ Identity Authentication Solution"

  s.description  = <<-DESC
                   * ZOLOZ Identity Authentication Solution
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source = { :http => 'https://zoloz-pipe.oss-ap-southeast-1.aliyuncs.com/saas/zolozkit_1.5.2_xcframework.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage", "WebKit", "Vision","AppTrackingTransparency","AdSupport","Security"
  s.libraries = 'c++', 'z','resolv'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.xcframework','hummer.xcframework','ZolozIdentityManager.xcframework','BioAuthEngine.xcframework','BioAuthAPI.xcframework','ZLZProtoBufferLite.xcframework','ToygerService.xcframework','ToygerServiceAlgo.xcframework','xNN.xcframework'
    core.resources  = "zolozkit.xcframework/ios-arm64/zolozkit.framework/ZolozKit.bundle","BioAuthEngine.xcframework/ios-arm64/BioAuthEngine.framework/BioAuthEngine.bundle","ToygerServiceAlgo.xcframework/ios-arm64/ToygerServiceAlgo.framework/ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.xcframework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'APPSecuritySDK' do |securitySDK|
    securitySDK.vendored_frameworks = 'APPSecuritySDK.xcframework'
  end
  s.subspec 'faceguard' do |faceguardsdk|
    faceguardsdk.vendored_frameworks = 'faceguard.xcframework'
  end
  
  s.subspec 'Cherry' do |cherry|
    cherry.vendored_frameworks = 'APBToygerFacade.xcframework'
  end
  s.subspec 'ZolozDocScan' do |scan|
    scan.vendored_frameworks = 'ZolozDocScan.xcframework'
  end
  s.subspec 'ZolozDoc' do |doc|
     doc.vendored_frameworks = 'ZolozDoc.xcframework'
  end
  s.subspec 'Dependency' do |cherry|
    cherry.vendored_frameworks = 'ZolozSensorServices.xcframework','zrpc.xcframework', 'WebContainerLite.xcframework', 'dfplite.xcframework', 'APLogLite.xcframework'
    cherry.resources = "WebContainerLite.xcframework/ios-arm64/WebContainerLite.framework/WebContainerLite.bundle"
  end
  s.subspec 'zbehaviour' do |ss|
    ss.vendored_frameworks = "zbehaviour.xcframework"
  end
  s.subspec 'ZolozNfcReader' do |ss|
    ss.vendored_frameworks = 'xNN.xcframework','ZolozNfcReader.xcframework'
    ss.resources = "ZolozNfcReader.xcframework/ios-arm64/ZolozNfcReader.framework/ZolozNfcReader.bundle"
    ss.framework = "CoreNFC"
  end
  s.default_subspec = 'Cherry','ZolozDocScan','Core','Dependency','APPSecuritySDK','faceguard'
  s.requires_arc = true
end
