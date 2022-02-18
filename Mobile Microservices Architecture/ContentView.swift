//
//  ContentView.swift
//  Mobile Microservices Architecture
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import SwiftUI
import CoreData
import Home

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        HomeView()
    }
}
