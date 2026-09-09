Pod::Spec.new do |s|

  s.name         = "zolozkit"
  s.version      = "2.0.8.251111182808-xcframework"
  s.summary      = "ZOLOZ Identity Authentication Solution"

  s.description  = <<-DESC
                   * ZOLOZ Identity Authentication Solution
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source = { :http => 'https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.0.8.251111182808-xcframework.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage", "WebKit", "Vision","AppTrackingTransparency","AdSupport","Security"
  s.libraries = 'c++', 'z','resolv'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.xcframework','hummer.xcframework','ZolozIdentityManager.xcframework','BioAuthEngine.xcframework','BioAuthAPI.xcframework','ZLZProtoBufferLite.xcframework','ToygerService.xcframework','ToygerServiceAlgo.xcframework','xNN.xcframework'
    core.resources  = "ZolozKit.bundle","BioAuthEngine.bundle","ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.xcframework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'APPSecuritySDK' do |securitySDK|
    securitySDK.vendored_frameworks = 'APPSecuritySDK_ekyc.xcframework'
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
    cherry.vendored_frameworks = 'ZolozSensorServices.xcframework','zrpc.xcframework', 'dfplite.xcframework', 'APLogLite.xcframework'
    #cherry.resources = "WebContainerLite.bundle"
  end
  s.subspec 'zbehaviour' do |ss|
    ss.vendored_frameworks = "zbehaviour.framework"
  end
  s.subspec 'ZolozNfcReader' do |ss|
    ss.vendored_frameworks = 'xNN.xcframework','ZolozNfcReader.xcframework'
    ss.resources = "ZolozNfcReader.bundle"
    ss.framework = "CoreNFC"
  end
  s.subspec 'ZWebContainerAdapter' do |adapter|
    adapter.vendored_frameworks = 'ZLZWebContainerAdapter.xcframework','WebContainerLite.xcframework'
    adapter.resources = "WebContainerLite.bundle"
  end
  s.subspec 'zolozkitWithWebContainer' do |ss|
    ss.dependency 'zolozkit/Cherry'
    ss.dependency 'zolozkit/ZolozDocScan'
    ss.dependency 'zolozkit/Core'
    ss.dependency 'zolozkit/Dependency'
    ss.dependency 'zolozkit/APPSecuritySDK'
    ss.dependency 'zolozkit/faceguard'
    ss.dependency 'zolozkit/ZWebContainerAdapter'
  end
  
  s.subspec 'zolozkitWithoutWebContainer' do |ss|
    ss.dependency 'zolozkit/Cherry'
    ss.dependency 'zolozkit/ZolozDocScan'
    ss.dependency 'zolozkit/Core'
    ss.dependency 'zolozkit/Dependency'
    ss.dependency 'zolozkit/APPSecuritySDK'
    ss.dependency 'zolozkit/faceguard'
  end
  
  s.default_subspec = 'zolozkitWithWebContainer'
  s.requires_arc = true
end

