//
//  BarChart.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BarChart: View {
    
    private var height: CGFloat = 25
    
    public init() {}
    
    public var body: some View {
        GeometryReader { metrics in
            VStack {
                HStack {
                    Text("title")
                    Color.red
                        .frame(maxWidth: .infinity)
                        .frame(height: self.height)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .background(Color.init(white: 0.9))
        }

    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
