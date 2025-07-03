// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct Venue: Equatable, Sendable {
	public let name: String
	public let host: String?
}
