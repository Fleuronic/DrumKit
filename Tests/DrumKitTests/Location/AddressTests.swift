// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct AddressTests {
	@Test func address() {
		let address = Address(streetAddress: "500 S Capitol Ave")

		#expect(address.streetAddress == "500 S Capitol Ave")
		#expect(address == Address(streetAddress: "500 S Capitol Ave"))
		#expect(address != Address(streetAddress: "1 Championship Dr"))
	}
}
