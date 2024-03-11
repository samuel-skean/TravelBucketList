//
//  DestinationModels.swift
//  sigios
//
//  Created by Quynh Tram on 1/21/24.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case vacation = "Vacation"
    case roadTrip = "Road Trip"
    case hiking = "Hiking"
    case familyTrip = "Family Trip"
    case soloTrip = "Solo Trip"
}

struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let location: String
    let date: String
    let url: String
    let categories: [Category.RawValue]
}

extension Destination {
    static let all: [Destination] = [
        Destination (
            name: "Let's go to Canada! 🛤️",
            image: "https://outsidesuburbia.com/wp-content/uploads/2021/01/banff-4331689_1280-1024x682.jpg",
            description: "This is what I want to do during my trip in Canada!\n\nExplore the vibrant city of Toronto with a visit to the iconic CN Tower and Royal Ontario Museum.\n\nHead to Banff National Park for breathtaking mountain landscapes and turquoise lakes.\n\nImmerse yourself in the rich history of Old Quebec City, followed by a scenic drive along the Cabot Trail in Nova Scotia.\n\nConclude your Canadian adventure by experiencing the multicultural charm\nof Vancouver's Stanley Park and Granville Island.",
            location: "Canada",
            date: "09/09/2010",
            url: "String",
            categories: ["Road Trip"]
        ),
        Destination (
            name: "Spring Break in Italy ⛲",
            image: "https://www.state.gov/wp-content/uploads/2019/04/shutterstock_720444505v2-2208x1406-1.jpg",
            description: "This is what I want to do during my trip in Italy!",
            location: "Italy",
            date: "03/25/2013",
            url: "String",
            categories: ["Solo Trip"]
        ),
        Destination (
            name: "Summer Australia Trip 🏝️",
            image: "https://www.civitatis.com/blog/wp-content/uploads/2020/02/blog-australia.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "06/10/2014",
            url: "String",
            categories: ["Hiking"]
        ),
        Destination (
            name: "Antarctica Cruise 🛴",
            image: "https://cdn.mos.cms.futurecdn.net/3YtWkM3eghxvYLTTNkuXXg-1200-80.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "07/31/2015",
            url: "String",
            categories: ["Vacation"]
        ),
        Destination (
            name: "Time to go surfing in Hawaii 🌄",
            image: "https://www.gohawaii.com/sites/default/files/hero-unit-images/12845-p1bd4nb8t912gc1ic74nd14g2ru.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "08/10/2017",
            url: "String",
            categories: ["Family Trip"]
        ),
        Destination (
            name: "Let's Visit Egypt 🕌",
            image: "https://www.state.gov/wp-content/uploads/2023/07/shutterstock_1037036482v2.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Australia",
            date: "10/10/2017",
            url: "String",
            categories: ["Vacation"]
        ),
        Destination (
            name: "Ready for Russia 🏢",
            image: "https://www.state.gov/wp-content/uploads/2018/11/Russia-2499x1406.jpg",
            description: "This is what I want to do during my trip in Australia!",
            location: "Russia",
            date: "01/11/2018",
            url: "String",
            categories: ["Family Trip", "Vacation"]
        )
    ]
}
