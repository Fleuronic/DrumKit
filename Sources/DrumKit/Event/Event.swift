// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import MemberwiseInit

@MemberwiseInit(.public)
public struct Event: Equatable, Sendable {
	public let date: Date
	public let details: URL
	public let scoresURL: URL
}
