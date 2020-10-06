//
//  BarRow.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BarRow: View {

    @Environment(\.barHeight) var barHeight
    @Environment(\.labelWidth) var labelWidth
        
    private var item: ChartItem
    
    public init(item: ChartItem) {
        self.item = item
    }
    
    public var body: some View {
        HStack(spacing: 8) {
            ZStack {
                Text(self.item.title)
                    .font(.system(size: 12))
                    .frame(width: self.labelWidth, alignment: .trailing)
            }
            ZStack {
                Bar(percent: self.item.value, color: self.item.color)
                BarText(percent: self.item.value, text: self.item.text)
            }.frame(height: self.barHeight)

        }
        
    }
}
