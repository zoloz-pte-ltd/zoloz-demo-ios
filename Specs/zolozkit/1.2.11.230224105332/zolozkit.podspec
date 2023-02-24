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
  s.version      = "1.2.11.230224105332"
  s.summary      = "zolozkit"

  s.description  = <<-DESC
                   * Detail about this framework.
                   DESC

  s.homepage     = "https://github.com/zoloz-pte-ltd/zoloz-demo-ios"
  s.license      = 'MIT'
  s.author       = { "zolozAdmin" => "zoloz-github@antgroup.com" }
  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.source = { :http => 'https://zoloz-pipe.oss-ap-southeast-1.aliyuncs.com/saas/1.2.11.230224105332.zip' }
  s.frameworks = "AVFoundation", "OpenGLES","CoreTelephony", "CoreMotion", "CoreLocation", "SystemConfiguration", "Accelerate", "CoreMedia","CoreServices","CoreGraphics","QuartzCore","CoreVideo","CoreImage","WebKit"
  s.libraries = 'c++', 'z'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'zolozkit.framework','hummer.framework','ZolozIdentityManager.framework','BioAuthEngine.framework','BioAuthAPI.framework','ZLZProtoBufferLite.framework','ToygerService.framework','ToygerServiceAlgo.framework'
    core.resources  = "zolozkit.framework/ZolozKit.bundle","BioAuthEngine.framework/BioAuthEngine.bundle","ToygerServiceAlgo.framework/ToygerService.bundle"
  end
  s.subspec 'Garfield' do |garfield|
    garfield.vendored_frameworks = 'APBToygerGarfield.framework'
    garfield.dependency 'lottie-ios'
  end
  s.subspec 'Cherry' do |cherry|
    cherry.vendored_frameworks = 'APBToygerFacade.framework'
  end
  s.subspec 'ZolozDocScan' do |scan|
    scan.vendored_frameworks = 'ZolozDocScan.framework'
  end
  s.subspec 'ZolozDoc' do |scan|
     scan.vendored_frameworks = 'ZolozDoc.framework'
   end
  s.subspec 'Dependency' do |cherry|
    cherry.vendored_frameworks = 'ZolozSensorServices.framework','zrpc.framework', 'WebContainerLite.framework', 'dfplite.framework', 'APLogLite.framework'
    cherry.resources = "WebContainerLite.framework/WebContainerLite.bundle"
  end
  s.default_subspec = 'Cherry','ZolozDocScan','Core','Dependency'

  s.requires_arc = true

end
