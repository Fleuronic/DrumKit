// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct Address: Equatable, Sendable {
	public let streetAddress: String
}
