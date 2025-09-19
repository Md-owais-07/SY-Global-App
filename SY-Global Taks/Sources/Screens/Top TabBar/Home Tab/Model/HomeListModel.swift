//
//  HomeListModel.swift
//  SY-Global Taks
//
//  Created by Owais on 9/18/25.
//

import Foundation

struct HomeListModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
    let rating: Double
    let isFavorite: Bool = false
}

let homeData: [HomeListModel] = [
    HomeListModel(image: "ht1", title: "London, UK", subTitle: "1 bed", rating: 4.5),
    HomeListModel(image: "ht2", title: "America, US", subTitle: "2 bed", rating: 5.0),
    HomeListModel(image: "ht3", title: "Saint-Denis, France", subTitle: "1 bed", rating: 4.3),
    HomeListModel(image: "ht4", title: "London, UK", subTitle: "1 bed", rating: 3.5),
    HomeListModel(image: "ht5", title: "America, US", subTitle: "3 bed", rating: 2.5),
]
