// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct LocationTests {
	@Test func location() {
		let location = Location(city: "Indianapolis")

		#expect(location.city == "Indianapolis")
		#expect(location == Location(city: "Indianapolis"))
		#expect(location != Location(city: "Allentown"))
	}
}
