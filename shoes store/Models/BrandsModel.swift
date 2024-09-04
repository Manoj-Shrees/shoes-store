//
//  BrandModel.swift
//  shoes store
//
//  Created by Manoj Shrees on 21/8/2024.
//

import SwiftUI

struct BrandsModel: Identifiable,Hashable {
    var id: UUID = .init()
    var title: String
    var icon: String
}


var sampleBrands: [BrandsModel] = [
    .init(title: "ALL" ,  icon: ""),
    .init(title: "Nike" , icon: "nike"),
    .init(title: "Adidas", icon: "adidas"),
    .init(title: "Puma" , icon: "puma")

]

