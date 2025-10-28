// Copyright © Fleuronic LLC. All rights reserved.

import Foundation
import MemberwiseInit

@MemberwiseInit(.public)
public struct Corps: Equatable, Sendable {
	public let name: String
	public let url: URL?
	public let isActive: Bool
}
