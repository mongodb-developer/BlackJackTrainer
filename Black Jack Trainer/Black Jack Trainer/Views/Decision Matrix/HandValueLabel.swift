//
//  HandValueLabel.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import SwiftUI

struct HandValueLabel: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var handValue: Int
    
    var body: some View {
        Text("\(handValue)")
            .frame(width: cellWidth + (horizontalSizeClass == .regular ? extraCellWidth : 0),
                   height: cellHeight + (verticalSizeClass == .regular ? extraCellHeight : 0), alignment: .center)
    }
}

struct HandValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 0) {
            ForEach((5...21).reversed(), id: \.self) {
                HandValueLabel(handValue: $0)
            }
        }
    }
}
