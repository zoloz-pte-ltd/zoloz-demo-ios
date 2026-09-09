
#
# MIT License
#
# Copyright (c) 2020 ZOLOZ-PTE-LTD
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

Pod::Spec.new do |s|

  s.name         = "zolozkit"
  s.version      = "1.3.7.240417164517-xcframework"
  s.summary      = "zolozkit"

  s.description  = <<-DESC
                   * Detail about this framework.
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.source = { :http => 'https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/1.3.7.240417164517_xcframework.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage","WebKit","Vision"
  s.libraries = 'c++', 'z'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.xcframework','hummer.xcframework','ZolozIdentityManager.xcframework','BioAuthEngine.xcframework','BioAuthAPI.xcframework','ZLZProtoBufferLite.xcframework','ToygerService.xcframework','ToygerServiceAlgo.xcframework','xNN.xcframework'
    core.resources  = "ZolozKit.bundle","BioAuthEngine.bundle","ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.xcframework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'Cherry' do |cherry|
    cherry.vendored_frameworks = 'APBToygerFacade.xcframework'
  end
  s.subspec 'ZolozDocScan' do |scan|
    scan.vendored_frameworks = 'ZolozDocScan.xcframework'
  end
  s.subspec 'ZolozDoc' do |scan|
     scan.vendored_frameworks = 'ZolozDoc.xcframework'
  end
  s.subspec 'ZolozNfcReader' do |ss|
    ss.vendored_frameworks = 'xNN.xcframework','ZolozNfcReader.xcframework'
    ss.resources = "ZolozNfcReader.bundle"
    ss.framework = "CoreNFC"
  end
  s.subspec 'APPSecuritySDK' do |securitySDK|
    securitySDK.vendored_frameworks = 'APPSecuritySDK.xcframework'
  end
  s.subspec 'Dependency' do |cherry|
    cherry.vendored_frameworks = 'ZolozSensorServices.xcframework','zrpc.xcframework', 'WebContainerLite.xcframework', 'dfplite.xcframework', 'APLogLite.xcframework'
    cherry.resources = "WebContainerLite.bundle"
  end
  s.default_subspec = 'Cherry','ZolozDocScan','Core','Dependency'

  s.requires_arc = true

end
