//
//  ChartItem.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct ChartItem {
    
    let title: String
    let value: CGFloat
    let text: String
    let color: Color
    
    public init(title: String, value: CGFloat, text: String, color: Color) {
        self.title = title
        self.value = value
        self.text = text
        self.color = color
    }
    
}
