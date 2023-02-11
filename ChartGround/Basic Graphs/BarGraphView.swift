//
//  BarGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct BarGraphView: View {
    
    @State private var expenses = Expenses.expenses
    
    var body: some View {
        GeometryReader { geo in
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
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Bar Graph")
        }
    }
}

struct BarGraphView_Previews: PreviewProvider {
    static var previews: some View {
        BarGraphView()
    }
}
