//
//  ContentView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    BarGraphView()
                } label: {
                    Text("Bar Graph")
                }
            }
            .navigationTitle("ChartGround")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
