// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import Testing
@testable import DrumKit

struct CircuitTests {
	@Test func circuit() {
		let url = URL(string: "https://dci.org")!
		let circuit = Circuit(
			name: "Drum Corps International",
			abbreviation: "DCI",
			url: url
		)

		#expect(circuit.name == "Drum Corps International")
		#expect(circuit.abbreviation == "DCI")
		#expect(circuit.url == url)
	}

	@Test func circuitWithoutOptionalValues() {
		let circuit = Circuit(
			name: "Independent",
			abbreviation: nil,
			url: nil
		)

		#expect(circuit.abbreviation == nil)
		#expect(circuit.url == nil)
	}

	@Test func circuitEquality() {
		let circuit = Circuit(name: "DCI", abbreviation: nil, url: nil)

		#expect(circuit == Circuit(name: "DCI", abbreviation: nil, url: nil))
		#expect(circuit != Circuit(name: "DCA", abbreviation: nil, url: nil))
	}
}
