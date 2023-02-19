//
//  StandardBarMark.swift
//  ChartGround
//
//  Created by Raj Raval on 12/02/23.
//

import SwiftUI
import Charts

struct StandardBarMark: View {
    
    @State private var expenses = Expenses.expenses
    @State private var chartDetail = CGBarMark.standardBarMark
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                GroupBox {
                    Chart(expenses) { expense in
                        BarMark(
                            x: .value("Month", expense.month),
                            y: .value("Total Expenses", expense.totalExpenses)
                        )
                    }
                    .foregroundColor(.pink)
                } label: {
                    Text(chartDetail.subtitle).font(.subheadline)
                }
                .frame(height: geo.size.height * 0.5)
                .padding()
                GroupBox {
                    Text("\(chartDetail.codeSnippet)")
                }
            }
            .navigationTitle(chartDetail.title)
        }
    }
}

struct StandardBarMark_Previews: PreviewProvider {
    static var previews: some View {
        StandardBarMark()
    }
}
