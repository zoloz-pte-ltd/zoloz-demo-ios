Pod::Spec.new do |s|

  s.name         = "zolozkit"
  s.version      = "1.4.4.240904141417"
  s.summary      = "ZOLOZ Identity Authentication Solution"

  s.description  = <<-DESC
                   * ZOLOZ Identity Authentication Solution
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.author       = { "zolozAdmin" => "info@zoloz.com" }
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source = { :http => 'https://hk-production-cdn.zoloz.net/ios/zolozkit_1.4.4.240904141417.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage", "WebKit","Vision","AppTrackingTransparency","AdSupport"
  s.libraries = 'c++', 'z'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.framework','hummer.framework','ZolozIdentityManager.framework','BioAuthEngine.framework','BioAuthAPI.framework','ZLZProtoBufferLite.framework','ToygerService.framework','ToygerServiceAlgo.framework','xNN.framework'
    core.resources  = "zolozkit.framework/ZolozKit.bundle","BioAuthEngine.framework/BioAuthEngine.bundle","ToygerServiceAlgo.framework/ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.framework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'APPSecuritySDK' do |securitySDK|
    securitySDK.vendored_frameworks = 'APPSecuritySDK.framework'
  end
  
  s.subspec 'Cherry' do |cherry|
    cherry.vendored_frameworks = 'APBToygerFacade.framework'
  end
  s.subspec 'ZolozDocScan' do |scan|
    scan.vendored_frameworks = 'ZolozDocScan.framework'
  end
  s.subspec 'ZolozDoc' do |doc|
     doc.vendored_frameworks = 'ZolozDoc.framework'
  end
  s.subspec 'Dependency' do |cherry|
    cherry.vendored_frameworks = 'ZolozSensorServices.framework','zrpc.framework', 'WebContainerLite.framework', 'dfplite.framework', 'APLogLite.framework'
    cherry.resources = "WebContainerLite.framework/WebContainerLite.bundle"
  end
  s.subspec 'zbehaviour' do |ss|
    ss.vendored_frameworks = "zbehaviour.framework"
  end
  s.subspec 'ZolozNfcReader' do |ss|
    ss.vendored_frameworks = 'xNN.framework','ZolozNfcReader.framework'
    ss.resources = "ZolozNfcReader.framework/ZolozNfcReader.bundle"
    ss.framework = "CoreNFC"
  end
  s.default_subspec = 'Cherry','ZolozDocScan','Core','Dependency','APPSecuritySDK'
  s.requires_arc = true
end
