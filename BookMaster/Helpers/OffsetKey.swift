//
//  OffsetKey.swift
//  BookMaster
//
//  Created by Sergey V on 16.03.25.
//

import Foundation
import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
