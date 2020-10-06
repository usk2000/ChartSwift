//
//  BarChart.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BarChart: View {
    
    private var items: [ChartItem]
    
    public init(items: [ChartItem]) {
        self.items = items
    }
    
    public var body: some View {
        VStack(spacing: 16) {
            ForEach.init(items) { item in
                BarRow.init(item: item)
                    .padding(.horizontal, 16)
            }
        }

    }
}
