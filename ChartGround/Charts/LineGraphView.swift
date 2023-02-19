//
//  LineGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct LineGraphView: View {
    
    @State private var trackers = DonutTracker.trackers
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(trackers) { tracker in
                        LineMark(x: .value("Month", tracker.trimmedDay), y: .value("Donuts Sold", tracker.totalDonutsSold))
                            .symbol(.diamond)
                    }
                }
                .foregroundColor(.pink)
            } label: {
                Text("LineMark in SwiftUI")
            }
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Line Graph")
        }
    }
}

struct LineGraphView_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphView()
    }
}
