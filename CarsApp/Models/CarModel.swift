//
//  CarModel.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI


struct CarModel: Identifiable{
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let description: String
    let models: [String]
    let gradientColors: [Color]
}
