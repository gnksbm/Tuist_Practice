import ProjectDescription

let appName = "Test"
let orgName = "Test"
let bundleID = "com.Test"
let project = Project(
    name: appName,
    organizationName: orgName,
    packages: [
        .remote(url: "https://github.com/firebase/firebase-ios-sdk", requirement: .upToNextMajor(from: "10.0.0"))
    ],
    targets: [
        .init(
            name: "TestApp",
            platform: .iOS,
            product: .app,
            bundleId: bundleID,
            sources: ["\(appName)/Sources/**"],
            resources: ["\(appName)/Resources/**"],
            dependencies: [
                .package(product: "FirebaseAnalytics"),
                .package(product: "FirebaseMessaging"),
                .package(product: "FirebaseFirestore"),
                .package(product: "FirebaseFirestoreSwift"),
            ]
        )
    ]
)
