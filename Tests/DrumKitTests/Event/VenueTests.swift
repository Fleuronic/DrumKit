// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct VenueTests {
	@Test func venue() {
		let venue = Venue(name: "Lucas Oil Stadium", host: "DCI")

		#expect(venue.name == "Lucas Oil Stadium")
		#expect(venue.host == "DCI")
		#expect(venue == Venue(name: "Lucas Oil Stadium", host: "DCI"))
		#expect(venue != Venue(name: "Lucas Oil Stadium", host: nil))
	}

	@Test func venueWithoutHost() {
		let venue = Venue(name: "Memorial Stadium", host: nil)

		#expect(venue.host == nil)
	}
}
