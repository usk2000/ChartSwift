//
//  SwiftUIView.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct Bar: View {
    
    private let corner: CGFloat = 4
    private let offset: CGFloat = 60
    
    private var percent: CGFloat
    private var color: Color
    
    public init(percent: CGFloat, color: Color) {
        self.percent = percent
        self.color = color
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                self.color
                    .frame(width: geometry.size.width * self.percent)
                    .cornerRadius(self.corner)
            }
        }.background(Color.init(white: 0.9).cornerRadius(5))
    }
}
