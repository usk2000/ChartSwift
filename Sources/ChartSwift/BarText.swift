//
//  BarText.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BarText: View {
    
    private var percent: CGFloat
    private var text: String
    
    public init(percent: CGFloat, text: String) {
        self.percent = percent
        self.text = text
    }
    
    public var body: some View {
        GeometryReader { geometry in
            if self.percent > 0.3 {
                Text(text)
                    .font(.system(size: 14))
                    .frame(width: geometry.size.width * self.percent - 8,
                           height: geometry.size.height,
                           alignment: .trailing)
            } else {
                Text(text)
                    .font(.system(size: 14))
                    .frame(height: geometry.size.height)
                    .padding(.leading, geometry.size.width * self.percent + 8)
            }
        }
    }
}
