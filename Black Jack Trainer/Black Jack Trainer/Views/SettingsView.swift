//
//  SettingsView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import SwiftUI

struct SettingsView: View {
    @State private var showingDefaultMatrix = false
    @State private var showingSplitMatrix = false
    @State private var showingSoftMatrix = false
    @State private var isConfirming = false
    
    var body: some View {
            Form {
                Text("Setting")
                Section(header: Text("Edit Decision Matrices")) {
                    Button(action: { showingSoftMatrix.toggle() }) {
                        HStack {
                            Text("Soft Hand Decisions")
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                    }
                    Button(action: { showingSplitMatrix.toggle() }) {
                        HStack {
                            Text("Split Hand Decisions")
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                    }
                    Button(action: { showingDefaultMatrix.toggle() }) {
                        HStack {
                            Text("Regular Hand Decisions")
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack {
                        Spacer()
                        Button("Reset All Matrices") { isConfirming = true }
                        .buttonStyle(.bordered)
                        .confirmationDialog("Are you sure reset all of the decision matrices to their defaults",
                                            isPresented: $isConfirming) {
                            Button("Confirm Reset", role: .destructive) {
                                Decisions.bootstrapDecisions()
                            }
                            Button("Cancel", role: .cancel) {}
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
        .navigationBarTitle("Settings", displayMode: .inline)
        Group {
            NavigationLink(destination: SoftDecisionView(editable: true), isActive: $showingSoftMatrix) {
                EmptyView()
            }
            NavigationLink(destination: SplitDecisionView(editable: true), isActive: $showingSplitMatrix) {
                EmptyView()
            }
            NavigationLink(destination: DefaultDecisionView(editable: true), isActive: $showingDefaultMatrix) {
                EmptyView()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
