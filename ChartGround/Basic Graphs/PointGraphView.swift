//
//  PointGraphView.swift
//  ChartGround
//
//  Created by Raj Raval on 04/02/23.
//

import SwiftUI
import Charts

enum Family: String, Plottable {
    case apple = "Apple"
    case android = "Android"
    case paper = "Paper"
    case social = "Social"
    case custom = "Custom"
}

struct Artboard: Identifiable {
    let id = UUID()
    let width: Int
    let height: Int
    let device: String
    let family: Family
}

extension Artboard {
    static let artboards = [
        Artboard(width: 200, height: 896, device: "iPhone 11", family: .apple),
        Artboard(width: 390, height: 844, device: "iPhone 13 / 14", family: .apple),
        Artboard(width: 428, height: 926, device: "iPhone 14 Plus", family: .apple),
        Artboard(width: 430, height: 932, device: "iPhone 14 Pro Max", family: .apple),
        
        Artboard(width: 2384, height: 3370, device: "A0", family: .paper),
        Artboard(width: 1684, height: 2384, device: "A1", family: .paper),
        Artboard(width: 1191, height: 1684, device: "A2", family: .paper),
        Artboard(width: 842, height: 1191, device: "A3", family: .paper),
        Artboard(width: 595, height: 842, device: "A4", family: .paper),
        Artboard(width: 420, height: 595, device: "A5", family: .paper),
        
        Artboard(width: 1200, height: 630, device: "Facebook Post", family: .social),
        Artboard(width: 1080, height: 1080, device: "Instagram Square Post", family: .social),
        Artboard(width: 1104, height: 736, device: "LinkedIn Post", family: .social),
        Artboard(width: 1200, height: 675, device: "Mastodon Post", family: .social),
        Artboard(width: 1920, height: 1080, device: "Youtube Thumbnail", family: .social)
    ]
}



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
