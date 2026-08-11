// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct Feature: Equatable, Sendable {
	public let name: String
}

// MARK: -
public extension Feature {
	static func isPossibleScoreAnnouncement(_ name: String) -> Bool {
		name.contains("Scores") || name.contains("Retreat") || name.contains("Ceremony")
	}
}
