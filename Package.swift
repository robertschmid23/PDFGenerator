// swift-tools-version: 5.10.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "PDFGenerator",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v17)
	],
	products: [
		.library(
			name: "PDFGenerator",
			targets: ["PDFGenerator"]),
	],
		//When Swift-Foundation (https://github.com/apple/swift-foundation.git) is available,
		//which will be at least after Swift-tools 6.0 is release then we can swich from LenientJSON
		//to the Swift-Foundation decoder and eventually that decoder will be the standard Foundation.JSONDecoder
	dependencies: [
	],
	targets: [
		.target(
			name: "PDFGenerator",
			dependencies: [
				]
//			exclude: ["MockData"] //TODO: Goal - find a way to produce versions with/without mock data
		),
		.testTarget(
			name: "PDFGeneratorTests"),
	]
)
