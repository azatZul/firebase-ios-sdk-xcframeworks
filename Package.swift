// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Firebase",
  platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v12), .watchOS(.v7)],
  products: [
    .library(
      name: "FirebaseABTesting",
      targets: ["FirebaseABTestingTarget"]
    ),
    .library(
      name: "FirebaseAnalytics",
      targets: ["FirebaseAnalyticsTarget"]
    ),
    .library(
      name: "FirebaseAnalyticsOnDeviceConversion",
      targets: ["FirebaseAnalyticsOnDeviceConversionTarget"]
    ),
    .library(
      name: "FirebaseAppCheck",
      targets: ["FirebaseAppCheckTarget"]
    ),
    .library(
      name: "FirebaseAppDistribution",
      targets: ["FirebaseAppDistributionTarget"]
    ),
    .library(
      name: "FirebaseAuth",
      targets: ["FirebaseAuthTarget"]
    ),
    .library(
      name: "FirebaseCrashlytics",
      targets: ["FirebaseCrashlyticsTarget"]
    ),
    .library(
      name: "FirebaseDatabase",
      targets: ["FirebaseDatabaseTarget"]
    ),
    .library(
      name: "FirebaseDynamicLinks",
      targets: ["FirebaseDynamicLinksTarget"]
    ),
    .library(
      name: "FirebaseFirestore",
      targets: ["FirebaseFirestoreTarget"]
    ),
    .library(
      name: "FirebaseFunctions",
      targets: ["FirebaseFunctionsTarget"]
    ),
    .library(
      name: "FirebaseInAppMessaging",
      targets: ["FirebaseInAppMessagingTarget"]
    ),
    .library(
      name: "FirebaseMLModelDownloader",
      targets: ["FirebaseMLModelDownloaderTarget"]
    ),
    .library(
      name: "FirebaseMessaging",
      targets: ["FirebaseMessagingTarget"]
    ),
    .library(
      name: "FirebasePerformance",
      targets: ["FirebasePerformanceTarget"]
    ),
    .library(
      name: "FirebaseRemoteConfig",
      targets: ["FirebaseRemoteConfigTarget"]
    ),
    .library(
      name: "FirebaseStorage",
      targets: ["FirebaseStorageTarget"]
    ),
    .library(
      name: "Google-Mobile-Ads-SDK",
      targets: ["Google-Mobile-Ads-SDKTarget"]
    ),
    .library(
      name: "GoogleSignIn",
      targets: ["GoogleSignInTarget"]
    )
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Firebase",
      publicHeadersPath: "./"
    ),
    .target(
      name: "FirebaseABTestingTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting"
      ],
      path: "Sources/FirebaseABTesting"
    ),
    .target(
      name: "FirebaseAnalyticsTarget",
      dependencies: [
        "Firebase",
        "_FirebaseAnalytics",
        "_FirebaseAnalyticsSwift",
        "_FirebaseCore",
        "_FirebaseCoreDiagnostics",
        "_FirebaseCoreInternal",
        "_FirebaseInstallations",
        "_GoogleAppMeasurement",
        "_GoogleAppMeasurementIdentitySupport",
        "_GoogleDataTransport",
        "_GoogleUtilities",
        "_PromisesObjC",
        "_nanopb"
      ],
      path: "Sources/FirebaseAnalytics"
    ),
    .target(
      name: "FirebaseAnalyticsOnDeviceConversionTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        .target(name: "_FirebaseAnalyticsOnDeviceConversion", condition: .when(platforms: [.iOS])),
        .target(name: "_GoogleAppMeasurementOnDeviceConversion", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/FirebaseAnalyticsOnDeviceConversion"
    ),
    .target(
      name: "FirebaseAppCheckTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseAppCheck"
      ],
      path: "Sources/FirebaseAppCheck"
    ),
    .target(
      name: "FirebaseAppDistributionTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        .target(name: "_FirebaseAppDistribution", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/FirebaseAppDistribution"
    ),
    .target(
      name: "FirebaseAuthTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseAuth",
        "_GTMSessionFetcher"
      ],
      path: "Sources/FirebaseAuth"
    ),
    .target(
      name: "FirebaseCrashlyticsTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseCrashlytics"
      ],
      path: "Sources/FirebaseCrashlytics",
      exclude: [
        "run",
        "upload-symbols"
      ]
    ),
    .target(
      name: "FirebaseDatabaseTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseDatabase",
        "_FirebaseDatabaseSwift",
        "_FirebaseSharedSwift",
        "_leveldb-library"
      ],
      path: "Sources/FirebaseDatabase"
    ),
    .target(
      name: "FirebaseDynamicLinksTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        .target(name: "_FirebaseDynamicLinks", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/FirebaseDynamicLinks"
    ),
    .target(
      name: "FirebaseFirestoreTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_BoringSSL-GRPC",
        "_FirebaseFirestore",
        "_FirebaseFirestoreSwift",
        "_Libuv-gRPC",
        "_abseil",
        "_gRPC-C++",
        "_gRPC-Core",
        "_leveldb-library"
      ],
      path: "Sources/FirebaseFirestore",
      exclude: [
        "Resources"
      ]
    ),
    .target(
      name: "FirebaseFunctionsTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseAppCheckInterop",
        "_FirebaseAuthInterop",
        "_FirebaseCoreExtension",
        "_FirebaseFunctions",
        "_FirebaseMessagingInterop",
        "_FirebaseSharedSwift",
        "_GTMSessionFetcher"
      ],
      path: "Sources/FirebaseFunctions"
    ),
    .target(
      name: "FirebaseInAppMessagingTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting",
        .target(name: "_FirebaseInAppMessaging", condition: .when(platforms: [.iOS])),
        .target(name: "_FirebaseInAppMessagingSwift", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/FirebaseInAppMessaging",
      exclude: [
        "Resources"
      ]
    ),
    .target(
      name: "FirebaseMLModelDownloaderTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseMLModelDownloader",
        "_SwiftProtobuf"
      ],
      path: "Sources/FirebaseMLModelDownloader"
    ),
    .target(
      name: "FirebaseMessagingTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseMessaging"
      ],
      path: "Sources/FirebaseMessaging"
    ),
    .target(
      name: "FirebasePerformanceTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting",
        .target(name: "_FirebasePerformance", condition: .when(platforms: [.iOS, .tvOS])),
        "_FirebaseRemoteConfig"
      ],
      path: "Sources/FirebasePerformance"
    ),
    .target(
      name: "FirebaseRemoteConfigTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseABTesting",
        "_FirebaseRemoteConfig",
        "_FirebaseRemoteConfigSwift",
        "_FirebaseSharedSwift"
      ],
      path: "Sources/FirebaseRemoteConfig"
    ),
    .target(
      name: "FirebaseStorageTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        "_FirebaseAppCheckInterop",
        "_FirebaseAuthInterop",
        "_FirebaseCoreExtension",
        "_FirebaseStorage",
        "_FirebaseStorageInternal",
        "_GTMSessionFetcher"
      ],
      path: "Sources/FirebaseStorage"
    ),
    .target(
      name: "Google-Mobile-Ads-SDKTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        .target(name: "_GoogleMobileAds", condition: .when(platforms: [.iOS])),
        .target(name: "_UserMessagingPlatform", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/Google-Mobile-Ads-SDK"
    ),
    .target(
      name: "GoogleSignInTarget",
      dependencies: [
        "Firebase",
        "FirebaseAnalyticsTarget",
        .target(name: "_AppAuth", condition: .when(platforms: [.iOS])),
        .target(name: "_GTMAppAuth", condition: .when(platforms: [.iOS])),
        "_GTMSessionFetcher",
        .target(name: "_GoogleSignIn", condition: .when(platforms: [.iOS]))
      ],
      path: "Sources/GoogleSignIn",
      exclude: [
        "Resources"
      ]
    ),
    .binaryTarget(
      name: "_AppAuth",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_AppAuth.xcframework.zip",
      checksum: "d17ec317f88b21a1d0ed506a64fae2a6f3cdfa50c2f5b35b73830827c61ce70f"
    ),
    .binaryTarget(
      name: "_BoringSSL-GRPC",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_BoringSSL-GRPC.xcframework.zip",
      checksum: "1d598eafb9a56388f9c1ec1ace4c59642d0c3f3e23469f62e96cde75df436e5c"
    ),
    .binaryTarget(
      name: "_FirebaseABTesting",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseABTesting.xcframework.zip",
      checksum: "c02a6b1d1ad57ba20311bab874dad3a988e9474c84cae8f9ffbcc164cd640281"
    ),
    .binaryTarget(
      name: "_FirebaseAnalytics",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAnalytics.xcframework.zip",
      checksum: "17a10d74fe4c7050ac1adc1dc22441ed683ab42edc583bc96dcf044f842c57ff"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsOnDeviceConversion",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAnalyticsOnDeviceConversion.xcframework.zip",
      checksum: "795421497ff826c366e0eff8821e27c1af85fb59306db3f2919006237d34b6c0"
    ),
    .binaryTarget(
      name: "_FirebaseAnalyticsSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAnalyticsSwift.xcframework.zip",
      checksum: "290caf2b325cb66c64d71745eee612dc362974bab5ce7bf419b8f5804d1a9002"
    ),
    .binaryTarget(
      name: "_FirebaseAppCheck",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAppCheck.xcframework.zip",
      checksum: "e0a2be55638748633a8e9c04f68df2a51691cd9dd40e402993064f0d827ff202"
    ),
    .binaryTarget(
      name: "_FirebaseAppCheckInterop",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAppCheckInterop.xcframework.zip",
      checksum: "4bdd1e31b9e27a216a76b558cd36ed7b5e1af8233c243b83971ef3d779590f91"
    ),
    .binaryTarget(
      name: "_FirebaseAppDistribution",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAppDistribution.xcframework.zip",
      checksum: "eb7995d2ae46e7494e94c40f5b87b55c90e049046c2741d2613c10a5be1a25c5"
    ),
    .binaryTarget(
      name: "_FirebaseAuth",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAuth.xcframework.zip",
      checksum: "468998676c3ded145983658fb3f78f02b4e451b780c2ad435ad36ad56bd678aa"
    ),
    .binaryTarget(
      name: "_FirebaseAuthInterop",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseAuthInterop.xcframework.zip",
      checksum: "b01c9d78614bf930a622bed9712244e4476fc23e5c3564a1b64902ece1ea734c"
    ),
    .binaryTarget(
      name: "_FirebaseCore",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseCore.xcframework.zip",
      checksum: "586dc45e7b1aca19c7783c3c779facc490f971ea7cfc8408963252a5828a2c43"
    ),
    .binaryTarget(
      name: "_FirebaseCoreDiagnostics",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseCoreDiagnostics.xcframework.zip",
      checksum: "2f4a2d2d604147c19974760b7943c9dc94660cf5a6685cd858106b8f4aa96260"
    ),
    .binaryTarget(
      name: "_FirebaseCoreExtension",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseCoreExtension.xcframework.zip",
      checksum: "fd9a8b6d9c593b12949a9519342e3c7da27dfdf39359b73846f6e5e78b47b7a0"
    ),
    .binaryTarget(
      name: "_FirebaseCoreInternal",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseCoreInternal.xcframework.zip",
      checksum: "aac73b67c1e678dda0dc04d182d12795fa0144f1058b22ed677093e4902dc046"
    ),
    .binaryTarget(
      name: "_FirebaseCrashlytics",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseCrashlytics.xcframework.zip",
      checksum: "da2f16b24782c66f9eba1dd7f752ae4f5fa666a7c96f2de069f66d428a699f39"
    ),
    .binaryTarget(
      name: "_FirebaseDatabase",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseDatabase.xcframework.zip",
      checksum: "f095958bbeaebf142cd1b19aa0aca3cad18c0acc71f75e55b37a97796f816b92"
    ),
    .binaryTarget(
      name: "_FirebaseDatabaseSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseDatabaseSwift.xcframework.zip",
      checksum: "b1c62233e2d319fb3b5f62f8aae9c00fae772b09694edb1f2b6b3e0d602ef566"
    ),
    .binaryTarget(
      name: "_FirebaseDynamicLinks",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseDynamicLinks.xcframework.zip",
      checksum: "492da15cf484f3a456ebf393fd7fc2db168f2527a91050eba3a2b5f4b71dd0dd"
    ),
    .binaryTarget(
      name: "_FirebaseFirestore",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseFirestore.xcframework.zip",
      checksum: "29cab956f914ab59e4a94165903457e971b044fea500d584fb5596b0cb62fa81"
    ),
    .binaryTarget(
      name: "_FirebaseFirestoreSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseFirestoreSwift.xcframework.zip",
      checksum: "11e3c4286df318a3d0aaeb11ae9a381fa59775c686ff656d5b22405df0b75033"
    ),
    .binaryTarget(
      name: "_FirebaseFunctions",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseFunctions.xcframework.zip",
      checksum: "da602cafd22ce73ad0ccf371ef382f65dd03206d640983949506cd4535baee68"
    ),
    .binaryTarget(
      name: "_FirebaseInAppMessaging",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseInAppMessaging.xcframework.zip",
      checksum: "bcde999ec4d457b8ce741c93ca667eecb04a89737a6083baef4afe03775ddf9e"
    ),
    .binaryTarget(
      name: "_FirebaseInAppMessagingSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseInAppMessagingSwift.xcframework.zip",
      checksum: "757095f099ef9ab3a91a3934b946fb9337b4edcddaa7b61d9faa775d5296051d"
    ),
    .binaryTarget(
      name: "_FirebaseInstallations",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseInstallations.xcframework.zip",
      checksum: "00faad06e1cce9ae532f14f541e78cabf1352d9aa5ce33eb09b65ecdb9c3e866"
    ),
    .binaryTarget(
      name: "_FirebaseMLModelDownloader",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseMLModelDownloader.xcframework.zip",
      checksum: "3426c8b8c07ed1e1accd658f6117935da0e37b4d9635c6b22b3c37fef9557cab"
    ),
    .binaryTarget(
      name: "_FirebaseMessaging",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseMessaging.xcframework.zip",
      checksum: "4e7e4ac97193d142ce50c06aec28d6112363ccefdedddd517e22c57c5ff3ffd1"
    ),
    .binaryTarget(
      name: "_FirebaseMessagingInterop",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseMessagingInterop.xcframework.zip",
      checksum: "964c0c02a3b9ebf4e1bd11d2689c8f71942984a6842411394cafc323647caba4"
    ),
    .binaryTarget(
      name: "_FirebasePerformance",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebasePerformance.xcframework.zip",
      checksum: "3d2be0c9fb4048bac4ea162a351ebae7dbe3750a5de7bc46590de585a104916c"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfig",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseRemoteConfig.xcframework.zip",
      checksum: "bb326484f71e95ee8163ae108337bfd100fdf72b39f016127c54c94c6ff8ab27"
    ),
    .binaryTarget(
      name: "_FirebaseRemoteConfigSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseRemoteConfigSwift.xcframework.zip",
      checksum: "4308183f2364f947ffa95fd8c8a80770357e41a2b661b69677ab00949ea900f3"
    ),
    .binaryTarget(
      name: "_FirebaseSharedSwift",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseSharedSwift.xcframework.zip",
      checksum: "fc19a6f3f971bfa8269bf0d5cabe4b290c2af653bc795606a3419f76290378f9"
    ),
    .binaryTarget(
      name: "_FirebaseStorage",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseStorage.xcframework.zip",
      checksum: "abcb6c3322306b8781b4d0b94592dd4525493db8f55dbc8222e16bb94b322c78"
    ),
    .binaryTarget(
      name: "_FirebaseStorageInternal",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_FirebaseStorageInternal.xcframework.zip",
      checksum: "3a45ecc0e000b3bb1384cdca31de90183feea086c46ee1fb428d8d5f9a184640"
    ),
    .binaryTarget(
      name: "_GTMAppAuth",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GTMAppAuth.xcframework.zip",
      checksum: "641dc544adf23b60daa626bf1e9d5dc2f03533d907fba186894b3d3592214b30"
    ),
    .binaryTarget(
      name: "_GTMSessionFetcher",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GTMSessionFetcher.xcframework.zip",
      checksum: "1cf2fd1de5a49a5c90170593b548e46ee24cee6d7d739ce70a457b5edd4b4f76"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurement",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleAppMeasurement.xcframework.zip",
      checksum: "4b43996f06c14afbd509805f6862a05cee42a3d373bbdfc4d6e4da49541701ea"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementIdentitySupport",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
      checksum: "e9970898a31d58902f1f34c00ca0936d176d213eb19c21efbb929cb440678cc9"
    ),
    .binaryTarget(
      name: "_GoogleAppMeasurementOnDeviceConversion",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleAppMeasurementOnDeviceConversion.xcframework.zip",
      checksum: "7d29d63d58aa60a63176037481ac57974f6c62c2cdaf2f6a3592c153dabb78b4"
    ),
    .binaryTarget(
      name: "_GoogleDataTransport",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleDataTransport.xcframework.zip",
      checksum: "c454e9b8c8c12b092dcee01aa73f825ac5ac512535f805dc3bb7c512ef1d680d"
    ),
    .binaryTarget(
      name: "_GoogleMobileAds",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleMobileAds.xcframework.zip",
      checksum: "841247182a417f29d1a0e205af7ecba6abe7dcad792a068eec1a93913499c6d3"
    ),
    .binaryTarget(
      name: "_GoogleSignIn",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleSignIn.xcframework.zip",
      checksum: "bd886d9ea0bb2f113efa4fc5ca0440eb37ca7d3650a104dba79c2b29be276fed"
    ),
    .binaryTarget(
      name: "_GoogleUtilities",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_GoogleUtilities.xcframework.zip",
      checksum: "f03d69966b49452f75578d9979c3330f4b57acd4961548b58a280e68466595c8"
    ),
    .binaryTarget(
      name: "_Libuv-gRPC",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_Libuv-gRPC.xcframework.zip",
      checksum: "a1100e8be1d005c6c66409adaaaa4d4a81d5d1444d2e7ec66e938bace632298e"
    ),
    .binaryTarget(
      name: "_PromisesObjC",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_PromisesObjC.xcframework.zip",
      checksum: "361166c397f2ea7ac2b3fbf26869ae783ef58a5b56d8a93b494485dab6282cce"
    ),
    .binaryTarget(
      name: "_SwiftProtobuf",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_SwiftProtobuf.xcframework.zip",
      checksum: "ebeb50c012dc8b0f67c6d4d425e225277088026ee628689d04abc7aaf4ef15f5"
    ),
    .binaryTarget(
      name: "_UserMessagingPlatform",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_UserMessagingPlatform.xcframework.zip",
      checksum: "64ddfec76612a4db4101a6543ce42f763990b941d857bf61ab0e683e5a5198db"
    ),
    .binaryTarget(
      name: "_abseil",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_abseil.xcframework.zip",
      checksum: "64cc0dc1fd86dee187ba3e7ed076faa0485c597e937fa054fce0316e0f89afbd"
    ),
    .binaryTarget(
      name: "_gRPC-C++",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_gRPC-C++.xcframework.zip",
      checksum: "889ee478de9c0cdef65560fd7d34f871664c9e28318f40aa404e1601db8393d8"
    ),
    .binaryTarget(
      name: "_gRPC-Core",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_gRPC-Core.xcframework.zip",
      checksum: "702516aaa9903b32426ea7fd9f7e6e8bfc129bafc0718718dc7fbd5f0d7a8975"
    ),
    .binaryTarget(
      name: "_leveldb-library",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_leveldb-library.xcframework.zip",
      checksum: "53e20b607470124607bd9cd4ea3d47374ded7cb524bb5718878acc6b942b6096"
    ),
    .binaryTarget(
      name: "_nanopb",
      url: "https://github.com/azatZul/firebase-ios-sdk-xcframeworks/releases/download/9.4.1/_nanopb.xcframework.zip",
      checksum: "c0ac1ae9637be8d55788bc7a10a998653dd00f9c2b649d7d3968ff72aca2b030"
    )
  ]
)
    