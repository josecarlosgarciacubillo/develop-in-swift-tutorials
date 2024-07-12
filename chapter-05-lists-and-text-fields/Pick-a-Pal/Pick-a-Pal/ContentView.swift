//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by José Carlos García on 07/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = []
    @State private var nameToAdd: String = ""
    @State private var pickedName: String = ""
    @State private var shouldRemovePickedName = false
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.purple)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .font(.title)
            .bold()
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.purple)
            
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    guard
                        !nameToAdd.isEmpty && !names.contains(nameToAdd)
                    else { return }
                    let formattedName = nameToAdd.trimmingCharacters(in: .whitespaces)
                    names.append(formattedName)
                    nameToAdd = ""
                }
            
            Divider()
            
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
                .tint(.purple)
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            (name == randomName)
                        }
                    }
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
