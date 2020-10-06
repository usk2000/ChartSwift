//
//  BandChart.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BandChart: View {
    
    public init() {}
    
    public var body: some View {
        GeometryReader { metrics in
            ZStack {
                VStack {
                    Spacer()
                    HStack(spacing: 0) {
                        Color.red.frame(width: metrics.size.width * 0.25)
                        Color.green.frame(width: metrics.size.width * 0.5)
                        Color.blue.frame(width: metrics.size.width * 0.25)
                    }.cornerRadius(4.0)
                    .frame(height: 50)
                    Spacer()
                }

                Path { path in
                    path.move(to: .init(x: metrics.size.width * 0.125, y: 50))
                    path.addLine(to: .init(x: metrics.size.width * 0.125, y: 75))
                }.stroke(Color.black)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .background(Color.init(white: 0.9))
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BandChart()
    }
}
