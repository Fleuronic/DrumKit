// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct CountryTests {
	@Test func country() {
		let country = Country(name: "United States")

		#expect(country.name == "United States")
		#expect(country == Country(name: "United States"))
		#expect(country != Country(name: "Canada"))
	}
}
