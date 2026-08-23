// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct Placement: Equatable, Sendable {
	public let rank: Int
	public let score: Double
}
