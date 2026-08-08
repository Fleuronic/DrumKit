// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct Feature: Equatable, Sendable {
	public let name: String
}

// MARK: -
public extension Feature {
	// Lineup features that signal an event actually awarded scores. Single source of truth for
	// the recorded-load scores guard (UniformAPI) and the live "event finished" check (Corpsboard).
	static func isPossibleScoreAnnouncement(_ name: String) -> Bool {
		[
			"Scores Announced",
			"Awards Ceremony",
			"Retreat",
			"Age-Out Ceremony"
		].contains(name)
	}
}
