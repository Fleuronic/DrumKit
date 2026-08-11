// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct DivisionTests {
	@Test func division() {
		let division = Division(name: "World Class")

		#expect(division.name == "World Class")
		#expect(division == Division(name: "World Class"))
		#expect(division != Division(name: "Open Class"))
	}
}
