//
//  BarRow.swift
//  
//
//  Created by Yusuke Hasegawa on 2020/10/06.
//

import SwiftUI

public struct BarRow: View {

    private let labelWidth: CGFloat = 75
    
    private var title: String
    private var percent: CGFloat
    private var color: Color
    
    public init(title: String, percent: CGFloat, color: Color) {
        self.title = title
        self.percent = percent
        self.color = color
    }
    
    public var body: some View {
        HStack(spacing: 8) {
            ZStack {
                Text(self.title)
                    .font(.system(size: 12))
                    .frame(width: self.labelWidth, alignment: .trailing)
            }
            Bar(percent: self.percent, color: self.color)
                .frame(height: 30)
                .background(Color.init(white: 0.9).cornerRadius(5))
        }
        
    }
}

struct BarRow_Previews: PreviewProvider {
    static var previews: some View {
        BarRow(title: "タイトル", percent: 0.8, color: .green)
    }
}
