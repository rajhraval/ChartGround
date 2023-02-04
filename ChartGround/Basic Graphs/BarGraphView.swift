//
//  BarGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct Expenses: Identifiable {
    let id = UUID()
    let month: String
    let totalExpenses: Int
}

extension Expenses {
    static let expenses = [
        Expenses(month: "May", totalExpenses: 2000),
        Expenses(month: "June", totalExpenses: 3000),
        Expenses(month: "July", totalExpenses: 1500),
        Expenses(month: "Aug", totalExpenses: 1750),
        Expenses(month: "Sep", totalExpenses: 1200),
        Expenses(month: "Oct", totalExpenses: 4000)
    ]
}

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
