//
//  RuleGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 08/02/23.
//

import SwiftUI
import Charts

enum WorkType: String, Plottable {
    case ideate = "Ideate"
    case design = "Deisgn"
    case prototype = "Prototype"
    case validate = "Validate"
}

struct GanttData: Identifiable {
    let id = UUID()
    let startDate: Int
    let endDate: Int
    let workType: WorkType
}

extension GanttData {
    static let timelines = [
        GanttData(startDate: 1, endDate: 3, workType: .ideate),
        GanttData(startDate: 4, endDate: 5, workType: .design),
        GanttData(startDate: 8, endDate: 9, workType: .prototype),
        GanttData(startDate: 10, endDate: 12, workType: .validate),
        GanttData(startDate: 13, endDate: 15, workType: .prototype),
        GanttData(startDate: 16, endDate: 18, workType: .prototype),
        GanttData(startDate: 20, endDate: 22, workType: .design),
        GanttData(startDate: 22, endDate: 27, workType: .validate),
    ]
}

struct RuleGraphView: View {
    
    @State private var timelines = GanttData.timelines
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(timelines) { timeline in
                        RuleMark(
                            xStart: .value("Start Date", timeline.startDate),
                            xEnd: .value("End Date", timeline.endDate)
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
