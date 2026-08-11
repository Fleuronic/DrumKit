// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import Testing
@testable import DrumKit

struct TimeTests {
	@Test func time() {
		let time = Time(offset: 3600, zone: .gmt)

		#expect(time.offset == 3600)
		#expect(time.zone == .gmt)
	}

	@Test func equalityDependsOnlyOnOffset() {
		let eastern = TimeZone(identifier: "America/New_York")!
		let time = Time(offset: 3600, zone: .gmt)

		#expect(time == Time(offset: 3600, zone: eastern))
		#expect(time != Time(offset: 7200, zone: .gmt))
	}

	@Test func comparableOrdersByOffset() {
		let earlier = Time(offset: 3600, zone: .gmt)
		let later = Time(offset: 7200, zone: .gmt)

		#expect(earlier < later)
		#expect(!(later < earlier))
	}
}
