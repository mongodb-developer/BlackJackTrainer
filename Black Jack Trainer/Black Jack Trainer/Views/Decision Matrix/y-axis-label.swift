//
//  y-axis-label.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct y_axis_label: View {
    let string: String
    var body: some View {
        Text(string)
            .padding(.leading, -40)
            .rotationEffect(.degrees(-90))
            .fixedSize()
            .frame(width: 30, height: 180, alignment: .center)
            
        //            .background(.yellow)
    }
}

//struct y_axis_label_Previews: PreviewProvider {
//    static var previews: some View {
//        HStack {
//            y_axis_label(string: "Your Pair")
//        }
//    }
//}
