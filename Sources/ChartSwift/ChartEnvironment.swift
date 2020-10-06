//
//  ChartEnvironment.swift
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

/// Bar Height
public struct BarHeight: EnvironmentKey {
    public static var defaultValue: CGFloat = 30
}

public extension EnvironmentValues {
    var barHeight: CGFloat {
        get { self[BarHeight.self] }
        set { self[BarHeight.self] = newValue }
    }
}

/// Title Label Width
public struct LabelWidth: EnvironmentKey {
    public static var defaultValue: CGFloat = 75
}

public extension EnvironmentValues {
    var labelWidth: CGFloat {
        get { self[LabelWidth.self] }
        set { self[LabelWidth.self] = newValue }
    }
}
