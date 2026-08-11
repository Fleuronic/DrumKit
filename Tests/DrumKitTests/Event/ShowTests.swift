// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct ShowTests {
	@Test func show() {
		let show = Show(name: "DCI Eastern Classic")

		#expect(show.name == "DCI Eastern Classic")
		#expect(show == Show(name: "DCI Eastern Classic"))
		#expect(show != Show(name: "NightBEAT"))
	}
}
