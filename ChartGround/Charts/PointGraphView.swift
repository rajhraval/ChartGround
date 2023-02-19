//
//  PointGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct PointGraphView: View {
    
    @State private var artboards = Artboard.artboards
    
    var body: some View {
        GeometryReader { geo in
            GroupBox {
                Chart {
                    ForEach(artboards) { artboard in
                        PointMark(x: .value("Width", artboard.width), y: .value("Height", artboard.height))
                            .foregroundStyle(by: .value("Family", artboard.family))
                    }
                }
            } label: {
                Text("PointMark in SwiftUI")
            }
            .frame(height: geo.size.height * 0.5)
            .padding()
            .navigationTitle("Point Graph")
        }
    }
}

struct PointGraphView_Previews: PreviewProvider {
    static var previews: some View {
        PointGraphView()
    }
}
