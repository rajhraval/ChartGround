//
//  CGBarMarkView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct CGBarMarkView: View {
    
    @State private var expenses = Expenses.expenses
    @State private var barMarks = CGChart.barMarks
    
    var body: some View {
        VStack {
            GroupBox {
                Chart {
                    ForEach(expenses) { expense in
                        BarMark(x: .value("Month", expense.month), y: .value("Expense", expense.totalExpenses))
                    }
                }
                .foregroundColor(.green)
            } label: {
                Text("BarMark in SwiftUI")
            }
            .padding()
            List {
                ForEach(barMarks) { mark in
                    NavigationLink {
                        AnyView(mark.chart)
                    } label: {
                        Text(mark.name)
                    }
                }
            }
        }
        .navigationTitle("BarMark")
    }
}

struct CGBarMarkView_Previews: PreviewProvider {
    static var previews: some View {
        CGBarMarkView()
    }
}
