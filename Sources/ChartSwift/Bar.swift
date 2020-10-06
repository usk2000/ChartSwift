//
//  SwiftUIView.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct Bar: View {
    
    private let corner: CGFloat = 4
    
    private var percent: CGFloat
    private var color: Color
    
    public init(percent: CGFloat, color: Color) {
        self.percent = percent
        self.color = color
    }
    
    public var body: some View {
        GeometryReader { geometry in
            self.color
                .frame(width: geometry.size.width * self.percent)
                .cornerRadius(self.corner)
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(percent: 0.8, color: .green)
            .previewLayout(.fixed(width: 320, height: 30))
    }
}
