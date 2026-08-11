// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import Testing
@testable import DrumKit

struct EventTests {
	@Test func event() {
		let date = Date(timeIntervalSince1970: 1_000_000)
		let detailsURL = URL(string: "https://dci.org/events/details")!
		let scoresURL = URL(string: "https://dci.org/events/scores")!
		let event = Event(
			date: date,
			detailsURL: detailsURL,
			scoresURL: scoresURL
		)

		#expect(event.date == date)
		#expect(event.detailsURL == detailsURL)
		#expect(event.scoresURL == scoresURL)
	}

	@Test func eventWithoutURLs() {
		let date = Date(timeIntervalSince1970: 0)
		let event = Event(date: date, detailsURL: nil, scoresURL: nil)

		#expect(event.detailsURL == nil)
		#expect(event.scoresURL == nil)
	}

	@Test func eventEquality() {
		let date = Date(timeIntervalSince1970: 0)
		let event = Event(date: date, detailsURL: nil, scoresURL: nil)

		#expect(event == Event(date: date, detailsURL: nil, scoresURL: nil))
		#expect(event != Event(date: Date(timeIntervalSince1970: 1), detailsURL: nil, scoresURL: nil))
	}
}
