//
//  RectGraphVIew.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct RectGraphView: View {
    
    @State private var distances = Distance.examples
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(distances) { distance in
                        RectangleMark(
                            x: .value("City A", distance.cityA),
                            y: .value("City B", distance.cityB)
                        )
                        .foregroundStyle(
                            by: .value("Air Distance", distance.distance)
                        )
                    }
                }
            } label: {
                Text("RectangleMark in SwiftUI")
            }
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Rectangle Graph Areas")
        }
    }
}

struct RectGraphView_Previews: PreviewProvider {
    static var previews: some View {
        RectGraphView()
    }
}
