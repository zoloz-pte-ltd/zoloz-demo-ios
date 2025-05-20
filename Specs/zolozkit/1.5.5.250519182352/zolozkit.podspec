Pod::Spec.new do |s|

  s.name         = "zolozkit"
  s.version      = "1.5.5.250519182352"
  s.summary      = "ZOLOZ Identity Authentication Solution"

  s.description  = <<-DESC
                   * ZOLOZ Identity Authentication Solution
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source = { :http => 'https://hk-production-cdn.zoloz.net/ios/zolozkit_1.5.5.250519182352.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage", "WebKit", "Vision","AppTrackingTransparency","AdSupport","Security"
  s.libraries = 'c++', 'z','resolv'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.framework','hummer.framework','ZolozIdentityManager.framework','BioAuthEngine.framework','BioAuthAPI.framework','ZLZProtoBufferLite.framework','ToygerService.framework','ToygerServiceAlgo.framework','xNN.framework'
    core.resources  = "zolozkit.framework/ZolozKit.bundle","BioAuthEngine.framework/BioAuthEngine.bundle","ToygerServiceAlgo.framework/ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.framework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'APPSecuritySDK' do |securitySDK|
    securitySDK.vendored_frameworks = 'APPSecuritySDK_ekyc.framework'
  end
  s.subspec 'faceguard' do |faceguardsdk|
    faceguardsdk.vendored_frameworks = 'faceguard.framework'
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
    cherry.vendored_frameworks = 'ZolozSensorServices.framework','zrpc.framework', 'dfplite.framework', 'APLogLite.framework'
    #cherry.resources = "WebContainerLite.framework/WebContainerLite.bundle"
  end
  s.subspec 'zbehaviour' do |ss|
    ss.vendored_frameworks = "zbehaviour.framework"
  end
  s.subspec 'ZolozNfcReader' do |ss|
    ss.vendored_frameworks = 'xNN.framework','ZolozNfcReader.framework'
    ss.resources = "ZolozNfcReader.framework/ZolozNfcReader.bundle"
    ss.framework = "CoreNFC"
  end
  s.subspec 'ZWebContainerAdapter' do |adapter|
    adapter.vendored_frameworks = 'ZLZWebContainerAdapter.framework','WebContainerLite.framework'
    adapter.resources = "WebContainerLite.framework/WebContainerLite.bundle"
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

