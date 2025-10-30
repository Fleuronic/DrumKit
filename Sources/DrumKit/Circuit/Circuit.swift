// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import MemberwiseInit

@MemberwiseInit(.public)
public struct Circuit: Equatable, Sendable {
	public let name: String
	public let abbreviation: String?
	public let url: URL?
}
