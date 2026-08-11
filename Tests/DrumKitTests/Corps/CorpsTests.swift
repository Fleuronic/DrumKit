// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import Testing
@testable import DrumKit

struct CorpsTests {
	@Test func corps() {
		let url = URL(string: "https://bluecoats.com")!
		let corps = Corps(
			name: "Bluecoats",
			url: url,
			isActive: true
		)

		#expect(corps.name == "Bluecoats")
		#expect(corps.url == url)
		#expect(corps.isActive)
	}

	@Test func corpsWithoutURL() {
		let corps = Corps(name: "Star of Indiana", url: nil, isActive: false)

		#expect(corps.url == nil)
		#expect(!corps.isActive)
	}

	@Test func corpsEquality() {
		let corps = Corps(name: "Carolina Crown", url: nil, isActive: true)

		#expect(corps == Corps(name: "Carolina Crown", url: nil, isActive: true))
		#expect(corps != Corps(name: "Carolina Crown", url: nil, isActive: false))
	}
}
