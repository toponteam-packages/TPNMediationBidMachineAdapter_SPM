// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationBidMachineAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationBidMachineAdapter",
            targets: ["TPNMediationBidMachineAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkBidMachineAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkBidMachineAdapter/3.8.0.2.9/AnyThinkBidMachineAdapter-3.8.0.2.9.zip",
            checksum: "fab47a8abfb9239716f8403e5333ec042a6644f4f630e3d0932def7c975434e3"
        ),
        .target(
            name: "TPNMediationBidMachineAdapterTarget",
            dependencies: [
                "AnyThinkBidMachineAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "BidMachine", package: "BidMachine-SPM")
            ],
            path: "Sources/TPNMediationBidMachineAdapterTarget"
        )
    ]
)
