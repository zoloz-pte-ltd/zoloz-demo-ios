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
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/zolozkit.xcframework.zip",
            checksum: "11f26cd32d80aedf00b7f20615ba11f16f9b069754a2e9a1fffdbb54058f365e"
        ),
        .binaryTarget(
            name: "hummer",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/hummer.xcframework.zip",
            checksum: "a1a452f29b0bee03896cdba10ced8ebb9ecbd50bb48ee40c4f2ce76505a2f8b0"
        ),
        .binaryTarget(
            name: "ZolozIdentityManager",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozIdentityManager.xcframework.zip",
            checksum: "35a528ce62781c0d91bd0ae92899fabb3e183fee2bd72c0e55506af061954935"
        ),
        .binaryTarget(
            name: "BioAuthEngine",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/BioAuthEngine.xcframework.zip",
            checksum: "d97b806826fc08d07078a819eaae17468b2a20cc961558d53fd011c8591b511d"
        ),
        .binaryTarget(
            name: "BioAuthAPI",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/BioAuthAPI.xcframework.zip",
            checksum: "d0f12da878809b2544a4ee9674b84947906be93251edf4d2f29f539e198ae97c"
        ),
        .binaryTarget(
            name: "ZLZProtoBufferLite",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZLZProtoBufferLite.xcframework.zip",
            checksum: "1e79cf23f40821ba6a71507a6a315d36b695fa43a0fed3ede419c03ef63066ca"
        ),
        .binaryTarget(
            name: "ToygerService",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ToygerService.xcframework.zip",
            checksum: "3183faece9aab5875ab5730e09482c1cae1430c01692670c163e5ba5e9b1170e"
        ),
        .binaryTarget(
            name: "ToygerServiceAlgo",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ToygerServiceAlgo.xcframework.zip",
            checksum: "0993bda1e8ab74905dcfe776c7249cf671e4d9d67ae90d0b7cd2d970e31f8855"
        ),
        .binaryTarget(
            name: "xNN",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/xNN.xcframework.zip",
            checksum: "98388a0c0bc37a4f18b5cc9f810ff9fd954b60be72a78dde81f1605ebb50a6b4"
        ),
        .binaryTarget(
            name: "APBToygerGarfield",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/APBToygerGarfield.xcframework.zip",
            checksum: "920eab3d1721238d099d3b373035f2dd6730d108ad526ff8e35a932fa32eafd0"
        ),
        .binaryTarget(
            name: "APPSecuritySDK_ekyc",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/APPSecuritySDK_ekyc.xcframework.zip",
            checksum: "b981170055a881ab9c3927b034e94e31e829b236fa9e50057757e7e5d9e9e884"
        ),
        .binaryTarget(
            name: "faceguard",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/faceguard.xcframework.zip",
            checksum: "d364ddde7838c6ac78388f1b6e626e533fcabf8f02453945855f61d9f0cd60f1"
        ),
        .binaryTarget(
            name: "APBToygerFacade",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/APBToygerFacade.xcframework.zip",
            checksum: "d139af472ab0bd66e561e37257d2904944b148dca690252bce51fc1df80ba1fa"
        ),
        .binaryTarget(
            name: "ZolozDocScan",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozDocScan.xcframework.zip",
            checksum: "0f9007bfc75292c5d1006167d121569914cbdd970eeb348f983aa0d29b329be3"
        ),
        .binaryTarget(
            name: "ZolozDoc",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozDoc.xcframework.zip",
            checksum: "64202e68fad5c683fd6ba0439005071ebc090a9f4166e01e6bb3442300e09897"
        ),
        .binaryTarget(
            name: "ZolozNfcReader",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozNfcReader.xcframework.zip",
            checksum: "31f7e3ddcb9bca2cb39ca3e1f3ad158b6621ece7954ed63e65aa3f4dd66e8275"
        ),
        .binaryTarget(
            name: "ZolozSensorServices",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozSensorServices.xcframework.zip",
            checksum: "71adf324befc4db7bb487d0c204c611eea8b7c7fa0e9b814012f796efc418e5f"
        ),
        .binaryTarget(
            name: "zrpc",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/zrpc.xcframework.zip",
            checksum: "42826012c4e0d60141013ff55ad126dcd45272903b783458c3bfd7f71c22aac6"
        ),
        .binaryTarget(
            name: "dfplite",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/dfplite.xcframework.zip",
            checksum: "3427d53d0fe79a95200eaca13dc29f91c6fad83654c28ac91652a794d94da4cb"
        ),
        .binaryTarget(
            name: "APLogLite",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/APLogLite.xcframework.zip",
            checksum: "9ecc8e082aad31d6d25a99e9b66e460e02112d88f8f6d7595a8a6abc5d04e2d5"
        ),
        .binaryTarget(
            name: "ZLZWebContainerAdapter",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZLZWebContainerAdapter.xcframework.zip",
            checksum: "8e0b8131f2b7d9f35303b77ab3968309518aa074aac65c28fc965dcd402a66b4"
        ),
        .binaryTarget(
            name: "WebContainerLite",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/WebContainerLite.xcframework.zip",
            checksum: "1d588b1631d03712ba14d6a538c49e7a2084377c0b857a91e70dde3d0dfa9d0f"
        ),
        // New in 2.2.1
        .binaryTarget(
            name: "ZLocationCheck",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZLocationCheck.xcframework.zip",
            checksum: "e0035279d980795fac901e55ffce03df87343336fc48aefabb91760c9134e25d"
        ),
        .binaryTarget(
            name: "ZVideoVerify",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZVideoVerify.xcframework.zip",
            checksum: "4b95f56fab8cb13e841c0cdec683cb103796c3bcd46b410d0bacce653ab266a1"
        ),

        // nuisdk (new in 2.2.8)
        .binaryTarget(
            name: "nuisdk",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/nuisdk.xcframework.zip",
            checksum: "6f5d7e71af444cff3c8ce5af0182bd57c8facf6b0c2014264024e8db7f00a182"
        ),
        .binaryTarget(
            name: "ZolozNfcIDReader",
            url: "https://hk-production-cdn.zoloz.net/ios/SPM/2.2.8/ZolozNfcIDReader.xcframework.zip",
            checksum: "1d97cbe21c31146f70b20a9154a6a18e5f7aa8b45701d4dcf899ff5d6d5ce0da"
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
                .target(name: "ZVideoVerify"),
                .target(name: "nuisdk")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AdSupport"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("iconv")
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
