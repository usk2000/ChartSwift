//
//  ChartColors.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

/// Bar Background Color
public struct BarBackground: EnvironmentKey {
    public static var defaultValue: Color = .init(white: 0.95)
}

public extension EnvironmentValues {
    var barBackground: Color {
        get { self[BarBackground.self] }
        set { self[BarBackground.self] = newValue }
    }
}
