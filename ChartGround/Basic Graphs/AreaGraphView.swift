//
//  AreaGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

enum Category: String, Plottable {
    case finance = "Finance"
    case pharma = "Pharmaceutical"
    case education = "Education"
}

struct Stock: Identifiable {
    let id = UUID()
    let price: Int
    let year: String
    let category: Category
}

extension Stock {
    static let stocks = [
        Stock(price: 10, year: "2020", category: .finance),
        Stock(price: 5, year: "2020", category: .pharma),
        Stock(price: 10, year: "2020", category: .education),
        
        Stock(price: 5, year: "2021", category: .finance),
        Stock(price: 20, year: "2021", category: .pharma),
        Stock(price: 20, year: "2021", category: .education),
        
        Stock(price: 30, year: "2022", category: .finance),
        Stock(price: 25, year: "2022", category: .pharma),
        Stock(price: 20, year: "2022", category: .education),
        
        Stock(price: 40, year: "2023", category: .finance),
        Stock(price: 50, year: "2023", category: .pharma),
        Stock(price: 20, year: "2023", category: .education),
        
        Stock(price: 20, year: "2024", category: .finance),
        Stock(price: 25, year: "2024", category: .pharma),
        Stock(price: 50, year: "2024", category: .education)
    ]
}

struct AreaGraphView: View {
    
    @State private var stocks = Stock.stocks
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(stocks) { stock in
                        AreaMark(x: .value("Year", stock.year), y: .value("Price", stock.price))
                            .foregroundStyle(by: .value("Category", stock.category))
                    }
                }
            } label: {
                Text("AreaMark in SwiftUI")
            }
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Area Graphs")
        }
    }
}

struct AreaGraphView_Previews: PreviewProvider {
    static var previews: some View {
        AreaGraphView()
    }
}
