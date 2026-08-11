// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct EnsembleTests {
	@Test func ensemble() {
		let ensemble = Ensemble(name: "Blue Devils")

		#expect(ensemble.name == "Blue Devils")
		#expect(ensemble == Ensemble(name: "Blue Devils"))
		#expect(ensemble != Ensemble(name: "Santa Clara Vanguard"))
	}
}
