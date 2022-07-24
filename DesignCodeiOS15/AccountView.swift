//
//  AccountView.swift
//  DesignCodeiOS15
//
//  Created by admin on 2022-07-17.
//

import SwiftUI

struct AccountView: View {
    
    @State var isDeleted = false;
    
    var body: some View {
        NavigationView {
            List {
                VStack(spacing: 8) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(Image(systemName: "hexagon")
                            .symbolVariant(.fill)
                            .foregroundColor(.blue)
                            .font(.system(size: 200))
                            .offset(x: -40, y: -100)
                        
                        )
                    Text("Ashis Pavan")
                        .font(.title.weight(.semibold))
                    HStack {
                        Image(systemName: "location").imageScale(.small)
                        Text("Canada")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                Section {
                    NavigationLink(destination: ContentView()) {
                        Label("Settings", systemImage: "gear")
     
                    }
                    NavigationLink {
                        Text("Billing View")
                    } label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    Label("Help", systemImage: "questionmark")
                }
                
                Section {
                    if !isDeleted {
                        Link(destination: URL(string: "http://www.google.com")!) {
                            HStack {
                                Label("Google", systemImage: "house")
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.secondary)
                            }
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button(action: { isDeleted = true }) {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                            Button(action: {}, label: {
                                Label("Pin", systemImage: "pin")
                            })
                            .tint(.yellow)
                        }
                    }
                    Link(destination: URL(string: "http://www.youtube.com")!) {
                        HStack {
                            Label("YouTube", systemImage: "tv")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                }.listRowSeparator(.hidden)
            }
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
