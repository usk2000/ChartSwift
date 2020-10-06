//
//  PieChart.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/09/20.
//

import SwiftUI

public struct PieChart: View {
    
    public init() {}
    
    public var body: some View {
        Path { path in
            path.addPath(Path(UIBezierPath.init(arcCenter: .init(x: 50, y: 50), radius: 50, startAngle: 0, endAngle: .pi * 2, clockwise: true).cgPath))
        }
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart()
    }
}
