// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct VenueEra: Equatable, Sendable {
	public let fromYear: Int?
	public let throughYear: Int?
	public let name: String
}
