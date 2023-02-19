//
//  CGBarMark.swift
//  ChartGround
//
//  Created by Raj Raval on 12/02/23.
//

import SwiftUI
import Charts

struct CGBarMark: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let description: String
    let codeSnippet: String
}

extension CGBarMark {
    
    static let standardBarMark = CGBarMark(
        title: "Single Bar Mark",
        subtitle: "This graphs depicts a standard bar graph comparing Total Expenses in a month.",
        description: "",
        codeSnippet: """
            Chart(expenses) { expense in
                \tBarMark(
                    x: .value("Month", expense.month),
                    y: .value("Total Expenses", \t\texpense.totalExpenses)
                )
            }
            """
        )
    
}
