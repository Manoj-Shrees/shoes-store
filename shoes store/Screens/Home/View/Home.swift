//
//  Home.swift
//  shoes store
//
//  Created by Manoj Shrees on 21/8/2024.
//

import SwiftUI

struct Home: View {
    
    @State var currentCategory = "All"
    
    @State var productList = [ProductsModel]()
    
    @State var product: ProductsModel? = nil
    
    @State var showProduct = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 40 , content:{
                    HStack{
                        
                        Text("**Shoes** \n Collections")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Image(systemName: "bell")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 17)
                            .imageScale(.large)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black.opacity(0.05), lineWidth: 3)
                            }
                    }
                    
                    //categoryl ist
                    categoriesView
                        .zIndex(1)
                    
                    // product list
                    
                    productsView
                        .fullScreenCover(isPresented: $showProduct, onDismiss: {
                            showProduct = false
                            product = nil
                        }, content: {
                            Product(data: product ?? productList[0])
                                .environment(\.colorScheme, .light)
                        })
                    
                    
                }) .padding()
                    .onAppear(){
                    productList = sampleProducts
                }            }
        }.scrollIndicators(.hidden)
    }
    
    
    // categories views
    var categoriesView: some View{
        ScrollView(.horizontal){
            HStack(spacing: 15, content: {
                ForEach(sampleBrands, id: \.id){ item in
                    HStack{
                        if !item.icon.isEmpty{
                            Image(item.icon)
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 26, height: 26)
                        }
                        
                        if currentCategory == item.title || item.title == "ALL"{
                            Text(item.title)
                        }
                    }
                    .foregroundColor(currentCategory == item.title ? .white : .black)
                    .padding()
                    .background(currentCategory == item.title ? .black : .gray.opacity(0.09))
                    .clipShape(Capsule())
                    .onTapGesture {
                        withAnimation{
                            currentCategory = item.title
                            
                            // new List for the selected brand
                            
                            if item.title == "ALL" {
                                productList = sampleProducts
                            }
                            else{
                                productList = sampleProducts.filter{$0.brand == item.title}
                            }
                        }
                    }
                }
            })
        }.scrollIndicators(.hidden)
    }
    
    
    // product list
    var productsView: some View{
        VStack{
            ForEach(productList, id: \.id){ item in
                
                VStack{
                    AsyncImage(url: URL(string: item.images[0])){img in
                        img.resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, height: 200)
                    .clipShape(Rectangle())
                    
                    Text(item.title)
                        .font(.headline.bold())
                    
                    Text("$\(item.price)")
                        .font(.callout)
                }
                .padding(.bottom)
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .onTapGesture {
                    product = item
                    showProduct = true
                }
            }
        }.zIndex(0)
    }
    
    
}




#Preview {
    Home()
}
