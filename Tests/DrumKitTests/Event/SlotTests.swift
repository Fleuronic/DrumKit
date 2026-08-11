// Copyright © Fleuronic LLC. All rights reserved.

import Testing
@testable import DrumKit

struct SlotTests {
	@Test func slot() {
		let time = Time(offset: 3600, zone: .gmt)
		let slot = Slot(time: time)

		#expect(slot.time == time)
		#expect(slot == Slot(time: time))
		#expect(slot != Slot(time: nil))
	}

	@Test func slotWithoutTime() {
		let slot = Slot(time: nil)

		#expect(slot.time == nil)
	}
}
