//
//  RectGraphVIew.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

struct Distance: Identifiable {
    let id = UUID()
    let cityA: String
    let cityB: String
    let distance: Int
}

extension Distance {
    static let examples = [
        Distance(cityA: "Mumbai", cityB: "Mumbai", distance: 0),
        Distance(cityA: "Mumbai", cityB: "Delhi", distance: 1164),
        Distance(cityA: "Mumbai", cityB: "Bengaluru", distance: 837),
        Distance(cityA: "Mumbai", cityB: "Chennai", distance: 1025),
        Distance(cityA: "Mumbai", cityB: "Hyderabad", distance: 623),
        Distance(cityA: "Mumbai", cityB: "Kolkata", distance: 1663),
        Distance(cityA: "Mumbai", cityB: "Ahemdabad", distance: 450),
        
        Distance(cityA: "Delhi", cityB: "Delhi", distance: 0),
        Distance(cityA: "Delhi", cityB: "Mumbai", distance: 1164),
        Distance(cityA: "Delhi", cityB: "Bengaluru", distance: 1741),
        Distance(cityA: "Delhi", cityB: "Chennai", distance: 1757),
        Distance(cityA: "Delhi", cityB: "Hyderabad", distance: 1259),
        Distance(cityA: "Delhi", cityB: "Kolkata", distance: 1304),
        Distance(cityA: "Delhi", cityB: "Ahemdabad", distance: 777),
        
        Distance(cityA: "Bengaluru", cityB: "Bengaluru", distance: 0),
        Distance(cityA: "Bengaluru", cityB: "Mumbai", distance: 837),
        Distance(cityA: "Bengaluru", cityB: "Delhi", distance: 1741),
        Distance(cityA: "Bengaluru", cityB: "Chennai", distance: 284),
        Distance(cityA: "Bengaluru", cityB: "Hyderabad", distance: 497),
        Distance(cityA: "Bengaluru", cityB: "Kolkata", distance: 1561),
        Distance(cityA: "Bengaluru", cityB: "Ahemdabad", distance: 1233),
        
        Distance(cityA: "Chennai", cityB: "Chennai", distance: 0),
        Distance(cityA: "Chennai", cityB: "Mumbai", distance: 1025),
        Distance(cityA: "Chennai", cityB: "Delhi", distance: 1757),
        Distance(cityA: "Chennai", cityB: "Bengaluru", distance: 284),
        Distance(cityA: "Chennai", cityB: "Hyderabad", distance: 1259),
        Distance(cityA: "Chennai", cityB: "Kolkata", distance: 1363),
        Distance(cityA: "Chennai", cityB: "Ahemdabad", distance: 1366),
        
        Distance(cityA: "Hyderabad", cityB: "Hyderabad", distance: 0),
        Distance(cityA: "Hyderabad", cityB: "Mumbai", distance: 623),
        Distance(cityA: "Hyderabad", cityB: "Delhi", distance: 1259),
        Distance(cityA: "Hyderabad", cityB: "Bengaluru", distance: 497),
        Distance(cityA: "Hyderabad", cityB: "Chennai", distance: 1259),
        Distance(cityA: "Hyderabad", cityB: "Kolkata", distance: 1184),
        Distance(cityA: "Hyderabad", cityB: "Ahemdabad", distance: 878),
        
        Distance(cityA: "Kolkata", cityB: "Kolkata", distance: 0),
        Distance(cityA: "Kolkata", cityB: "Mumbai", distance: 1663),
        Distance(cityA: "Kolkata", cityB: "Delhi", distance: 1304),
        Distance(cityA: "Kolkata", cityB: "Bengaluru", distance: 1561),
        Distance(cityA: "Kolkata", cityB: "Chennai", distance: 1363),
        Distance(cityA: "Kolkata", cityB: "Hyderabad", distance: 1184),
        Distance(cityA: "Kolkata", cityB: "Ahemdabad", distance: 1617),
        
        Distance(cityA: "Ahemdabad", cityB: "Ahemdabad", distance: 0),
        Distance(cityA: "Ahemdabad", cityB: "Mumbai", distance: 450),
        Distance(cityA: "Ahemdabad", cityB: "Delhi", distance: 777),
        Distance(cityA: "Ahemdabad", cityB: "Bengaluru", distance: 1233),
        Distance(cityA: "Ahemdabad", cityB: "Chennai", distance: 1366),
        Distance(cityA: "Ahemdabad", cityB: "Hyderabad", distance: 878),
        Distance(cityA: "Ahemdabad", cityB: "Kolkata", distance: 1617),
    ]
}

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
