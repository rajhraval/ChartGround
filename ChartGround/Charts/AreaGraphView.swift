//
//  AreaGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

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
