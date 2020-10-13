// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "swiftLambda",
  products: [
    .executable(
      name: "swiftLambda", 
      targets: [
        "swiftLambda"
      ]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-argument-parser", 
      .upToNextMinor(from: "0.3.0")
    )
  ],
  targets: [
    .target(
      name: "swiftLambda",
      dependencies: [
        .product(
          name: "ArgumentParser", 
          package: "swift-argument-parser"
        ),
      ]
    ),
    .testTarget(
      name: "swiftLambdaTests",
      dependencies: [
        "swiftLambda"
      ]
    ),
  ]
)
