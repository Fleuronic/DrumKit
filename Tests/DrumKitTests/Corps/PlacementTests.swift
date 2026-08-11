// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct PlacementTests {
	@Test func placement() {
		let placement = Placement(rank: 1, score: 98.5)

		#expect(placement.rank == 1)
		#expect(placement.score == 98.5)
		#expect(placement == Placement(rank: 1, score: 98.5))
		#expect(placement != Placement(rank: 2, score: 97.0))
	}
}
