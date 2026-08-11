// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct FeatureTests {
	@Test func feature() {
		let feature = Feature(name: "Scores Announced")

		#expect(feature.name == "Scores Announced")
		#expect(feature == Feature(name: "Scores Announced"))
		#expect(feature != Feature(name: "Intermission"))
	}

	@Test(arguments: [
		"Scores Announced",
		"Retreat",
		"Awards Ceremony"
	])
	func possibleScoreAnnouncement(name: String) {
		#expect(Feature.isPossibleScoreAnnouncement(name))
	}

	@Test(arguments: [
		"Intermission",
		"Warmup",
		""
	])
	func nonScoreAnnouncement(name: String) {
		#expect(!Feature.isPossibleScoreAnnouncement(name))
	}
}
