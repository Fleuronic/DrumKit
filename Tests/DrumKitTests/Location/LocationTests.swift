// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct LocationTests {
	@Test func location() {
		let location = Location(city: "Indianapolis", timeZone: "America/Indiana/Indianapolis")

		#expect(location.city == "Indianapolis")
		#expect(location.timeZone == "America/Indiana/Indianapolis")
		#expect(location == Location(city: "Indianapolis", timeZone: "America/Indiana/Indianapolis"))
		#expect(location != Location(city: "Allentown", timeZone: "America/New_York"))
	}
}
