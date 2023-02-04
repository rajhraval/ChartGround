//
//  LineGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct DonutTracker: Identifiable {
    let id = UUID()
    let totalDonutsSold: Int
    let weekday: String
    
    var trimmedDay: String {
        String(weekday.prefix(3))
    }
}

extension DonutTracker {
    static let trackers = [
        DonutTracker(totalDonutsSold: 52, weekday: "Monday"),
        DonutTracker(totalDonutsSold: 100, weekday: "Tuesday"),
        DonutTracker(totalDonutsSold: 75, weekday: "Wednesday"),
        DonutTracker(totalDonutsSold: 64, weekday: "Thursday"),
        DonutTracker(totalDonutsSold: 86, weekday: "Friday"),
        DonutTracker(totalDonutsSold: 134, weekday: "Saturday"),
        DonutTracker(totalDonutsSold: 153, weekday: "Sunday")
    ]
}

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
