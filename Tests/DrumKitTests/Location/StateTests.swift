// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct StateTests {
	@Test func state() {
		let state = State(abbreviation: "IN")

		#expect(state.abbreviation == "IN")
		#expect(state == State(abbreviation: "IN"))
		#expect(state != State(abbreviation: "PA"))
	}
}
