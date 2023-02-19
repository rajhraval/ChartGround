//
//  RuleGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 08/02/23.
//

import SwiftUI
import Charts

struct RuleGraphView: View {
    
    @State private var timelines = GanttData.timelines
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(timelines) { timeline in
                        RuleMark(
                            xStart: .value("Start Date", timeline.startDate),
                            xEnd: .value("End Date", timeline.endDate),
                            y: .value("Phase", timeline.phase)
                        )
                        .foregroundStyle(by: .value("Work Type", timeline.workType))
                    }
                }
            } label: {
                Text("RuleMark in SwiftUI")
            }
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Timeline Graphs")
        }
    }
}

struct RuleGraphView_Previews: PreviewProvider {
    static var previews: some View {
        RuleGraphView()
    }
}
