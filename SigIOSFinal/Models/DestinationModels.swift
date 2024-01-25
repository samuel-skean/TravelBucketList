//
//  DestinationModels.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import Foundation

enum Category : String {
    case visited = "Visited"
    case toVisit = "To be Visited"
}

struct Destination : Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let location: String
    let date: String
    let url: String
    
}

extension Destination {
    static let all: [Destination] = [
        Destination (
            name: "Let's go to Canada! 🛤️",
            image: "https://outsidesuburbia.com/wp-content/uploads/2021/01/banff-4331689_1280-1024x682.jpg",
            description: "This is what I want to do during my trip in Canada!",
            location: "Canada",
            date: "09/09/2010",
            url: "String"
        ),
        Destination (
            name: "Spring Break in Italy ⛲",
            image: "https://www.state.gov/wp-content/uploads/2019/04/shutterstock_720444505v2-2208x1406-1.jpg",
            description: "This is what I want to do during my trip in Italy!",
            location: "Italy",
            date: "03/25/2013",
            url: "String"
        ),
        Destination (
            name: "Summer Australia Trip 🏝️",
            image: "https://www.civitatis.com/blog/wp-content/uploads/2020/02/blog-australia.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "06/10/2014",
            url: "String"
        ),
        Destination (
            name: "Antarctica Cruise 🛴",
            image: "https://www.civitatis.com/blog/wp-content/uploads/2020/02/blog-australia.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "06/10/2014",
            url: "String"
        ),
        Destination (
            name: "Time to go surfing in Hawaii 🌄",
            image: "https://www.civitatis.com/blog/wp-content/uploads/2020/02/blog-australia.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "06/10/2014",
            url: "String"
        ),
        Destination (
            name: "Let's Visit Egypt 🕌",
            image: "https://www.civitatis.com/blog/wp-content/uploads/2020/02/blog-australia.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "06/10/2014",
            url: "String"
        )
    ]
}

