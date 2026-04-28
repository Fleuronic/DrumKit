// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import MemberwiseInit

@MemberwiseInit(.public)
public struct Time: Sendable {
	public let offset: TimeInterval
	public let zone: TimeZone
}

// MARK: -
extension Time: Equatable {
	public static func ==(lhs: Time, rhs: Time) -> Bool {
		lhs.offset == rhs.offset
	}
}

// MARK: -
extension Time: Comparable {
	public static func <(lhs: Time, rhs: Time) -> Bool {
		lhs.offset < rhs.offset
	}
}
