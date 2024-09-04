//
//  ProductsModel.swift
//  shoes store
//
//  Created by Manoj Shrees on 21/8/2024.
//

import SwiftUI

struct ProductsModel: Identifiable, Hashable {
    var id: Int
    var title: String
    var brand: String
    var description: String
    var images: [String]
    var sizes: [Int]
    var price: Int
}



var sampleProducts: [ProductsModel] = [
    
    .init(id:0 , title: "Air Jordan 1 Mid" ,  brand:"Nike", description: "Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colours and crisp leather give it a distinct identity.",  images: [
        "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4f864b95-0da2-4f66-b1c7-2cfb6e655bc6/AIR+JORDAN+1+MID.png",
        "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b497aee0-09c5-413e-9f79-df4d2ed999c3/AIR+JORDAN+1+MID.png",
        "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cd2e434a-2fb5-4d5d-b3d2-756ce443d21c/AIR+JORDAN+1+MID.png",
        "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/05204412-868d-40c4-b800-7acbe948a2c0/AIR+JORDAN+1+MID.png"],
          sizes: [40,45,30,35] , price: 135),
    
    
    .init(id:1 , title: "Nike Dunk Low" ,  brand:"Nike", description: "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly shined overlays and classic team colours. With its iconic hoops design, the Nike Dunk Low channels '80s vintage back onto the streets while its padded, low-cut collar lets you take your game anywhere—in comfort.",  images: [
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a447e0eb-b47c-464b-91df-5387f958582d/W+NIKE+DUNK+LOW.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f3c16707-4582-4a8a-a638-0396fa21c196/W+NIKE+DUNK+LOW.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2b823a4d-3aa7-43ed-945a-e7b56703024a/W+NIKE+DUNK+LOW.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/299a35b4-9eac-4297-bd72-021b9df2722d/W+NIKE+DUNK+LOW.png"],
              sizes: [40,42,45,54] , price: 160),
    
    
    .init(id:2 , title: "Nike Go FlyEase" ,  brand:"Nike", description: "Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colours and crisp leather give it a distinct identity.",  images: [
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/c78d9bc1-bda5-405b-a49c-95e17a3258f7/NIKE+GO+FLYEASE.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/73036ba9-2ed0-4ba7-833f-887b98997113/NIKE+GO+FLYEASE.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/c78d9bc1-bda5-405b-a49c-95e17a3258f7/NIKE+GO+FLYEASE.png",
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a6ce2e37-a33b-4df1-9720-b10647b02c8b/NIKE+GO+FLYEASE.png"
           ],
              sizes: [38,29,40,41,42] , price: 190),
    
    
    .init(id:3 , title: "GAZELLE SHOES" ,  brand:"Adidas", description: "This product is excluded from all promotional discounts and offers. Promo codes and vouchers cannot be used",  images: [
            "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/61f87dec481e4512823ea7fb0080ba1a_9366/Gazelle_Shoes_Black_BB5476_01_standard.jpg",
            "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b94b0e16ce1343f8bc3ca60501799631_9366/Gazelle_Shoes_Black_BB5476_02_standard_hover.jpg",
            "",
            ""
           ],
          sizes: [34,37,38,40,42] , price: 170),
    
    .init(id:4 , title: "GRAND COURT 2.0 SHOES" ,  brand:"Adidas", description: "If you could only have one pair of sneakers, this could be them. These adidas Grand Court shoes with the classic 3-Stripes keep your sneaker game sharp and clean. Cloudfoam Comfort cushioning keeps the insides soft and pillowy. Pair them with any of your favourite pants because these will take you anywhere and everywhere. .",  images: [
        "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0e4b2bb534b949238ecdeaf0323c09eb_9366/GRAND_COURT_2.0_SHOES_White_GW9195_HM3_hover.jpg",
            "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6e7885e14f144b998c75368fcd5ececf_9366/GRAND_COURT_2.0_SHOES_White_GW9195_HM1.jpg",
            "",
            ""
           ],
              sizes: [38,40,42,44] , price: 120),
    
    
    .init(id:5 , title: "TAZON Modern SL" ,  brand:"Puma", description: "Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colours and crisp leather give it a distinct identity.",  images: [
            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/190296/08/sv03/fnd/AUS/fmt/png/First-Mile-TAZON-Modern-SL-Men's-Running-Shoes",
            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/190296/08/sv01/fnd/AUS/fmt/png/First-Mile-TAZON-Modern-SL-Men's-Running-Shoes",
            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/190296/08/bv/fnd/AUS/fmt/png/First-Mile-TAZON-Modern-SL-Men's-Running-Shoes",
            "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/190296/08/fnd/AUS/fmt/png/First-Mile-TAZON-Modern-SL-Men's-Running-Shoes"
           ],
          sizes: [38,40,42,44] , price: 120)
    
    

]
