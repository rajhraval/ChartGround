//
//  CGChart.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI

struct CGChart: Identifiable {
    let id = UUID()
    let name: String
    let chart: any View
}

extension CGChart {
    static let charts = [
        CGChart(name: "Bar Graphs", chart: CGBarMarkView()),
        CGChart(name: "Line Graphs", chart: LineGraphView()),
        CGChart(name: "Point Graphs", chart: PointGraphView()),
        CGChart(name: "Area Graphs", chart: AreaGraphView()),
        CGChart(name: "Heat Map Graphs", chart: RectGraphView()),
        CGChart(name: "Rule Mark Graphs", chart: RuleGraphView())
    ]
    
    static let barMarks = [
        CGChart(name: "Standard BarMark", chart: StandardBarMark())
    ]
}
