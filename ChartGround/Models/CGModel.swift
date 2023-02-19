//
//  CGModel.swift
//  ChartGround
//
//  Created by Raj Raval on 11/02/23.
//

import SwiftUI
import Charts

// MARK: For BarMark

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

// MARK: For LineMark

struct DonutTracker: Identifiable {
    let id = UUID()
    let totalDonutsSold: Int
    let weekday: String
    
    var trimmedDay: String {
        String(weekday.prefix(3))
    }
}

extension DonutTracker {
    static let trackers = [
        DonutTracker(totalDonutsSold: 52, weekday: "Monday"),
        DonutTracker(totalDonutsSold: 100, weekday: "Tuesday"),
        DonutTracker(totalDonutsSold: 75, weekday: "Wednesday"),
        DonutTracker(totalDonutsSold: 64, weekday: "Thursday"),
        DonutTracker(totalDonutsSold: 86, weekday: "Friday"),
        DonutTracker(totalDonutsSold: 134, weekday: "Saturday"),
        DonutTracker(totalDonutsSold: 153, weekday: "Sunday")
    ]
}

// MARK: For PointMark

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

// MARK: For AreaMark

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

// MARK: For RectMark


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

// MARK: For RuleMark

enum WorkType: String, Plottable {
    case ideate = "Ideate"
    case design = "Deisgn"
    case prototype = "Prototype"
    case validate = "Validate"
}

enum Phase: String, Plottable {
    case one = "Phase 1"
    case two = "Phase 2"
    case three = "Phase 3"
}

struct GanttData: Identifiable {
    let id = UUID()
    let startDate: Int
    let endDate: Int
    let workType: WorkType
    let phase: Phase
}

extension GanttData {
    static let timelines = [
        GanttData(startDate: 1, endDate: 3, workType: .ideate, phase: .one),
        GanttData(startDate: 4, endDate: 5, workType: .design, phase: .one),
        GanttData(startDate: 8, endDate: 9, workType: .prototype, phase: .one),
        GanttData(startDate: 10, endDate: 12, workType: .validate, phase: .one),
        GanttData(startDate: 13, endDate: 15, workType: .prototype, phase: .two),
        GanttData(startDate: 16, endDate: 18, workType: .prototype, phase: .three),
        GanttData(startDate: 20, endDate: 22, workType: .design, phase: .three),
        GanttData(startDate: 22, endDate: 27, workType: .validate, phase: .three),
    ]
}
