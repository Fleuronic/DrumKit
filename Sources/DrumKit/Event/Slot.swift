// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import MemberwiseInit

@MemberwiseInit(.public)
public struct Slot: Equatable, Sendable {
	public let time: Date?
}
