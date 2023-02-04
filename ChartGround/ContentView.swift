//
//  ContentView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var charts = CGChart.charts
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charts) { chart in
                    NavigationLink {
                        AnyView(chart.chart)
                    } label: {
                        Text(chart.name)
                    }
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
