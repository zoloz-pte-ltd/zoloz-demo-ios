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
            name: "ZolozKitWithoutXnn",
            type: .static,
            targets: ["ZolozKitWithoutXnn"]
        ),
        .library(
            name: "ZolozKitNfcReader",
            type: .static,
            targets: ["ZolozKitNfcReader"]
        ),
        .library(
            name: "ZolozKitNfcIDReader",
            type: .static,
            targets: ["ZolozKitNfcIDReader"]
        ),
        .library(
            name: "ZolozKitVideoVerify",
            type: .static,
            targets: ["ZolozKitVideoVerify"]
        ),
        .library(
            name: "ZolozKitLocationCheck",
            type: .static,
            targets: ["ZolozKitLocationCheck"]
        )

    ],
    targets: [
        .binaryTarget(
            name: "zolozkit",
            url: "https://hk-production-cdn.zoloz.net/ios/zolozkit.xcframework.zip",
            checksum: "ec7a5be4f83fbaf8439fbb35701472acb921127e9ceb10fbe09c7a2bca0907c1"
        ),
        .binaryTarget(
            name: "hummer",
            url: "https://hk-production-cdn.zoloz.net/ios/hummer.xcframework.zip",
            checksum: "ba984dd4c6f1749bb4ab7d3fbb72f09070aa086834010980f120babe6c71a6c8"
        ),
        .binaryTarget(
            name: "ZolozIdentityManager",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozIdentityManager.xcframework.zip",
            checksum: "06d6aa94d3a7b5c991067b0e452233706e0b070cc79cfd55fa75340585a9772c"
        ),
        .binaryTarget(
            name: "BioAuthEngine",
            url: "https://hk-production-cdn.zoloz.net/ios/BioAuthEngine.xcframework.zip",
            checksum: "7d02edc13326e9af4691165be1409824b50abe60de716be0ae5c0ef57de05c27"
        ),
        .binaryTarget(
            name: "BioAuthAPI",
            url: "https://hk-production-cdn.zoloz.net/ios/BioAuthAPI.xcframework.zip",
            checksum: "a7c563f74116d7f165f831a11481c4c68042a292a59586ea9c7f196d2a532779"
        ),
        .binaryTarget(
            name: "ZLZProtoBufferLite",
            url: "https://hk-production-cdn.zoloz.net/ios/ZLZProtoBufferLite.xcframework.zip",
            checksum: "c08f2483504a76a925ddf3c49a66ccf248988aa993849b32b37dc8c07c552e0c"
        ),
        .binaryTarget(
            name: "ToygerService",
            url: "https://hk-production-cdn.zoloz.net/ios/ToygerService.xcframework.zip",
            checksum: "db74263e31a85ae28babecb34c82418da38a13a4ca4d3eb99a70ef276f65a192"
        ),
        .binaryTarget(
            name: "ToygerServiceAlgo",
            url: "https://hk-production-cdn.zoloz.net/ios/ToygerServiceAlgo.xcframework.zip",
            checksum: "b8a0a708c45edf54413920ab8d343fa7b3c9c7bdc8073b252dc201565336ef34"
        ),
        .binaryTarget(
            name: "xNN",
            url: "https://hk-production-cdn.zoloz.net/ios/xNN.xcframework.zip",
            checksum: "1fbb15d243e8398eebccb764f7deac182b742122bc0950cf69d9a2a0cbb045eb"
        ),
        .binaryTarget(
            name: "APBToygerGarfield",
            url: "https://hk-production-cdn.zoloz.net/ios/APBToygerGarfield.xcframework.zip",
            checksum: "8acf1c8d5fac051a3113464d48bcd699f29d8f8e86d2fb1b9edead7c6c03e417"
        ),
        .binaryTarget(
            name: "APPSecuritySDK_ekyc",
            url: "https://hk-production-cdn.zoloz.net/ios/APPSecuritySDK_ekyc.xcframework.zip",
            checksum: "203972c56818b44fcdfdbc8bd1519e6c3676a06bef0dd16accaa4b685ea1c8d3"
        ),
        .binaryTarget(
            name: "faceguard",
            url: "https://hk-production-cdn.zoloz.net/ios/faceguard.xcframework.zip",
            checksum: "f154ffb87e508e871b37035a4dc8b466b6ca55b63d0f6a3864ef5ef7422e6bdc"
        ),
        .binaryTarget(
            name: "APBToygerFacade",
            url: "https://hk-production-cdn.zoloz.net/ios/APBToygerFacade.xcframework.zip",
            checksum: "fc95c3cbdf2a1b432424353df63afda27f4855e759a2baa3132be5ff2ad5dc92"
        ),
        .binaryTarget(
            name: "ZolozDocScan",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozDocScan.xcframework.zip",
            checksum: "dbfd0b4d479f2a5bfe36a9dcb97d635518603390b5956db05e73c5d86997b50f"
        ),
        .binaryTarget(
            name: "ZolozDoc",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozDoc.xcframework.zip",
            checksum: "b19aa8c9bfba533ea491da65d2716e7716b36f58eb8142d9dbb5428dce96bde2"
        ),
        .binaryTarget(
            name: "ZolozNfcReader",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozNfcReader.xcframework.zip",
            checksum: "cb3ba9d793116d0c602973f69f22ed48e688d1a6107d40a5edd02f06a586c4f1"
        ),
        .binaryTarget(
            name: "ZolozSensorServices",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozSensorServices.xcframework.zip",
            checksum: "02cb6333434db0ae5240f4f7976790ea995c2732701dda890ce5b4523b4abffa"
        ),
        .binaryTarget(
            name: "zrpc",
            url: "https://hk-production-cdn.zoloz.net/ios/zrpc.xcframework.zip",
            checksum: "79f4f413f44dea3836cf3b23a5ae692e22626541e3033ce13c14cdd7db0c8aaa"
        ),
        .binaryTarget(
            name: "dfplite",
            url: "https://hk-production-cdn.zoloz.net/ios/dfplite.xcframework.zip",
            checksum: "1b146bed8dd540061ffc4d5009ee9c7f4f98f4aa03f94affa41f57de4fd1c99d"
        ),
        .binaryTarget(
            name: "APLogLite",
            url: "https://hk-production-cdn.zoloz.net/ios/APLogLite.xcframework.zip",
            checksum: "3a5ce2140e8bba8d2296806caec66fc7f65f2127a3e96033d3ce75e4d136da83"
        ),
        .binaryTarget(
            name: "ZLZWebContainerAdapter",
            url: "https://hk-production-cdn.zoloz.net/ios/ZLZWebContainerAdapter.xcframework.zip",
            checksum: "2a8cbf98b6042e74c3770576aca25a3556a90d3145393b056db4095ff5528e09"
        ),
        .binaryTarget(
            name: "WebContainerLite",
            url: "https://hk-production-cdn.zoloz.net/ios/WebContainerLite.xcframework.zip",
            checksum: "dd840322be8d4792a7ebf96aaeaf4ed2ba2d81a527ea1c4d055accca26c276b5"
        ),
        // New in 2.2.1
        .binaryTarget(
            name: "ZLocationCheck",
            url: "https://hk-production-cdn.zoloz.net/ios/ZLocationCheck.xcframework.zip",
            checksum: "b7c5e182a7373b0e17fbeba9a06b9b1f4ab230c8bc0c45c0f1e4dfdc6c6d0abe"
        ),
        .binaryTarget(
            name: "ZVideoVerify",
            url: "https://hk-production-cdn.zoloz.net/ios/ZVideoVerify.xcframework.zip",
            checksum: "e56f5aa76154392fc2aa3f5c2327a5b897ccc4f6251ba2d21eb91194d78f60cc"
        ),
        .binaryTarget(
            name: "ZolozNfcIDReader",
            url: "https://hk-production-cdn.zoloz.net/ios/ZolozNfcIDReader.xcframework.zip",
            checksum: "118310426a671ab1e6482a5db1ce9fcfb47d7b487bde5aa5153094857d762151"
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

        // xNN (independent from Core, per podspec)
        .target(
            name: "ZolozKitXNN",
            dependencies: [
                .target(name: "xNN")
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
                .target(name: "ToygerServiceAlgo")
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

        // ZolozNfcIDReader (new in 2.2.1)
        .target(
            name: "ZolozKitNfcIDReader",
            dependencies: [
                .target(name: "ZolozNfcIDReader")
            ],
            linkerSettings: [
                .linkedFramework("CoreNFC")
            ]
        ),

        // ZolozVideoVerify (new in 2.2.1)
        .target(
            name: "ZolozKitVideoVerify",
            dependencies: [
                .target(name: "ZVideoVerify")
            ],
            linkerSettings: [
                .linkedFramework("Speech"),
                .linkedFramework("VideoToolbox")
            ]
        ),

        // ZLocationCheck (new in 2.2.1)
        .target(
            name: "ZolozKitLocationCheck",
            dependencies: [
                .target(name: "ZLocationCheck")
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

        // zolozkitWithWebContainer (+ xNN)
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
                .target(name: "ZolozKitXNN"),
                .target(name: "resources"),
            ],
        ),

        // zolozkitWithoutWebContainer (+ xNN)
        .target(
            name: "ZolozKitWithoutWebContainer",
            dependencies: [
                .target(name: "ZolozKitCherry"),
                .target(name: "ZolozKitDocScan"),
                .target(name: "ZolozKitCore"),
                .target(name: "ZolozKitDependency"),
                .target(name: "ZolozKitSecurity"),
                .target(name: "ZolozKitFaceGuard"),
                .target(name: "ZolozKitXNN"),
                .target(name: "resources"),
            ],
        ),

        // zolozkitWithoutXnn (ZolozKitWithWebContainer - xNN)
        .target(
            name: "ZolozKitWithoutXnn",
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
        )
    ]
)