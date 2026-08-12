// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct ZIPCodeTests {
	@Test func zipCode() {
		let zipCode = ZIPCode(code: "46225")

		#expect(zipCode.code == "46225")
		#expect(zipCode == ZIPCode(code: "46225"))
		#expect(zipCode != ZIPCode(code: "18101"))
	}
}
