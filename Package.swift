// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "zolozkit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        
        .library(
            name: "ZolozKitWithWebContainer",
            type: .static,
            targets: ["ZolozKitWithWebContainer"]
        ),
        .library(
            name: "ZolozKitWithoutWebContainer",
            type: .static,
            targets: ["ZolozKitWithoutWebContainer"]
        ),
        .library(
                name: "ZolozKitNfcReader",
                type: .static,
                targets: ["ZolozKitNfcReader"]
            )
        
    ],
    targets: [
        // Binary Targets - 使用远程OSS链接
        .binaryTarget(
            name: "zolozkit",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/zolozkit.xcframework.zip",
            checksum: "ae6fb7b99c0848efcf27de1d9867d58b26c6e11c36d58b9aa20a2e6c1546a3f0"
        ),
        .binaryTarget(
            name: "hummer",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/hummer.xcframework.zip",
            checksum: "aa00a383f3746c0444bfe440c77e16305669e8105fadb4a2e7e65c8d2d7153ed"
        ),
        .binaryTarget(
            name: "ZolozIdentityManager",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZolozIdentityManager.xcframework.zip",
            checksum: "e9d867b17c687bb04b43f676a81fb4edcdfd3b94761686f0e2f07f57b180a2ba"
        ),
        .binaryTarget(
            name: "BioAuthEngine",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/BioAuthEngine.xcframework.zip",
            checksum: "7c729fa1a23d5555d451aed3c0155791b2adafc656774cc6c9ad4687c606c9a0"
        ),
        .binaryTarget(
            name: "BioAuthAPI",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/BioAuthAPI.xcframework.zip",
            checksum: "d1bab2d2bd2dec03d882a0c89e4188555116869a4095098bacb56c935b8bdd13"
        ),
        .binaryTarget(
            name: "ZLZProtoBufferLite",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZLZProtoBufferLite.xcframework.zip",
            checksum: "a87a190ae3825fff696c551795da829a1b538dbbb696e97eea3edd9069bc667a"
        ),
        .binaryTarget(
            name: "ToygerService",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ToygerService.xcframework.zip",
            checksum: "f994b4061fffea2bf7b071d9d9397af213f6c16d61c9f7546ade4f1330e43ce6"
        ),
        .binaryTarget(
            name: "ToygerServiceAlgo",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ToygerServiceAlgo.xcframework.zip",
            checksum: "e39e0e3a5cf8844d7a81c046e365b0505437307874190d7ad08c870b81fdc60c"
        ),
        .binaryTarget(
            name: "xNN",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/xNN.xcframework.zip",
            checksum: "2d7b1f7d3295fdfbf25b90e10f08cd22cb92d5c33448e96a515b46c5faab8899"
        ),
        .binaryTarget(
            name: "APBToygerGarfield",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/APBToygerGarfield.xcframework.zip",
            checksum: "98325c75c673576d9d9d9ba14c3fbc8433f9ffc1536258d18de2dda6d6e258d5"
        ),
        .binaryTarget(
            name: "APPSecuritySDK_ekyc",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/APPSecuritySDK_ekyc.xcframework.zip",
            checksum: "7edd91bf43c06b6c134746b2052235089f3fa172f89182885c548b3b0812bb38"
        ),
        .binaryTarget(
            name: "faceguard",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/faceguard.xcframework.zip",
            checksum: "f7cb91d9564c3d8161f82d4a871a85e9418ff794d941fdb3412c28ae048fafee"
        ),
        .binaryTarget(
            name: "APBToygerFacade",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/APBToygerFacade.xcframework.zip",
            checksum: "aa821882d76427819ecf790455eff38be1a122c6beee9cb20b4aec6889c6bddb"
        ),
        .binaryTarget(
            name: "ZolozDocScan",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZolozDocScan.xcframework.zip",
            checksum: "35b803d902aebbbac6e07ba92367c5e2db35c6dc82098d31ef6bc7b4ad09d72e"
        ),
        .binaryTarget(
            name: "ZolozDoc",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZolozDoc.xcframework.zip",
            checksum: "770e625603136bd0141d058cebb292f5a10e9bff5b569162252136ec45129391"
        ),
        .binaryTarget(
            name: "ZolozNfcReader",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZolozNfcReader.xcframework.zip",
            checksum: "5b2debed73820163dd22f56286e048efa8ffb36e46c1eb4c536641834394b34b"
        ),
        .binaryTarget(
            name: "ZolozSensorServices",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZolozSensorServices.xcframework.zip",
            checksum: "824a6623b24d5b13b22c093a2bb606fd9792d0ba0d8a46718ac5a24496d3ce08"
        ),
        .binaryTarget(
            name: "zrpc",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/zrpc.xcframework.zip",
            checksum: "55fced9829d766d2a955538be28c6ff22fa574d1c4c8b9746d3a3dc48ec9944d"
        ),
        .binaryTarget(
            name: "dfplite",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/dfplite.xcframework.zip",
            checksum: "f447639bc827653f0dcdfd2d048ccff9353f9fbdf8afbbc40e31f938c5e7fb25"
        ),
        .binaryTarget(
            name: "APLogLite",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/APLogLite.xcframework.zip",
            checksum: "75486dbb46f161b5395be566e8199c3d57b6b7d9969afdc342a6d85a9d333214"
        ),
        .binaryTarget(
            name: "ZLZWebContainerAdapter",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/ZLZWebContainerAdapter.xcframework.zip",
            checksum: "c49f609cd549dd4777533947e834200436e805895b0ad3c42ce4ca902fe08e0b"
        ),
        .binaryTarget(
            name: "WebContainerLite",
            url: "https://zasia.oss-cn-beijing.aliyuncs.com/ios/framework/2.12xc/WebContainerLite.xcframework.zip",
            checksum: "a707f067cef08882cff0205cf7d5fd983afeb18abb2a7c4166871ad256747b6a"
        ),
        
        //MARK: - subTargets
        .target(
            name: "resources",
            path: "Sources/resources",
            resources: [
                .copy("BioAuthEngine.bundle"),
                .copy("ToygerService.bundle"),
                .copy("ZolozKit.bundle"),
                .copy("ZolozNfcReader.bundle"),
                .copy("WebContainerLite.bundle")
            ]
        ),
        
        .target(
            name: "ZolozKitCore",
            dependencies: [
                .target(name: "zolozkit"),
                .target(name: "hummer"),
                .target(name: "ZolozIdentityManager"),
                .target(name: "BioAuthEngine"),
                .target(name: "BioAuthAPI"),
                .target(name: "ZLZProtoBufferLite"),
                .target(name: "ToygerService"),
                .target(name: "ToygerServiceAlgo"),
                .target(name: "xNN")
            ],
            path: "Sources/ZolozKitCore",
            
            linkerSettings: [
                //系统框架依赖
                .linkedFramework("AVFoundation"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("Accelerate"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreServices"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreImage"),
                .linkedFramework("WebKit"),
                .linkedFramework("Vision"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AdSupport"),
                .linkedFramework("Security"),
                .linkedFramework("Speech"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv")
            ]
        ),
        
        // Garfield
        .target(
            name: "ZolozKitGarfield",
            dependencies: [
                .target(name: "APBToygerGarfield")
            ]
            // 注意：podspec中有lottie-ios依赖，但这里需要用户单独添加
        ),
        
        // APPSecuritySDK
        .target(
            name: "ZolozKitSecurity",
            dependencies: [
                .target(name: "APPSecuritySDK_ekyc")
            ]
        ),
        
        // faceguard
        .target(
            name: "ZolozKitFaceGuard",
            dependencies: [
                .target(name: "faceguard")
            ]
        ),
        
        // Cherry
        .target(
            name: "ZolozKitCherry",
            dependencies: [
                .target(name: "APBToygerFacade")
            ]
        ),
        
        // ZolozDocScan
        .target(
            name: "ZolozKitDocScan",
            dependencies: [
                .target(name: "ZolozDocScan")
            ]
        ),
        
        // ZolozDoc
        .target(
            name: "ZolozKitDoc",
            dependencies: [
                .target(name: "ZolozDoc")
            ]
        ),
        
        // Dependency
        .target(
            name: "ZolozKitDependency",
            dependencies: [
                .target(name: "ZolozSensorServices"),
                .target(name: "zrpc"),
                .target(name: "dfplite"),
                .target(name: "APLogLite")
            ]
        ),
        
        // ZolozNfcReader
        .target(
            name: "ZolozKitNfcReader",
            dependencies: [
                .target(name: "xNN"),
                .target(name: "ZolozNfcReader")
            ],
            path: "Sources/ZolozKitNfcReader",
            
            linkerSettings: [
                .linkedFramework("CoreNFC")
            ]
        ),
        
        // ZWebContainerAdapter
        .target(
            name: "ZolozKitWebContainer",
            dependencies: [
                .target(name: "ZLZWebContainerAdapter"),
                .target(name: "WebContainerLite")
            ],
            path: "Sources/ZolozKitWebContainer",
            
        ),
        
        
        // zolozkitWithWebContainer
        .target(
            name: "ZolozKitWithWebContainer",
            dependencies: [
                .target(name: "ZolozKitCherry"),
                .target(name: "ZolozKitDocScan"),
                .target(name: "ZolozKitCore"),
                .target(name: "ZolozKitDependency"),
                .target(name: "ZolozKitSecurity"),
                .target(name: "ZolozKitFaceGuard"),
                .target(name: "ZolozKitWebContainer"),
                .target(name: "resources"),
            ],
        ),
        
        // zolozkitWithoutWebContainer
        .target(
            name: "ZolozKitWithoutWebContainer",
            dependencies: [
                .target(name: "ZolozKitCherry"),
                .target(name: "ZolozKitDocScan"),
                .target(name: "ZolozKitCore"),
                .target(name: "ZolozKitDependency"),
                .target(name: "ZolozKitSecurity"),
                .target(name: "ZolozKitFaceGuard"),
                .target(name: "resources"),
            ],
        )
    ]
)
