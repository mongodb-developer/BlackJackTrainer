//
//  AppearancePreviews.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 13/10/2021.
//

import SwiftUI

struct AppearancePreviews<Value: View>: View {
    private let viewToPreview: Value

    init(_ viewToPreview: Value) {
        self.viewToPreview = viewToPreview
    }

    var body: some View {
        Group {
            viewToPreview
            viewToPreview.preferredColorScheme(.dark)
            viewToPreview.previewInterfaceOrientation(.landscapeRight)
        }
    }
}
