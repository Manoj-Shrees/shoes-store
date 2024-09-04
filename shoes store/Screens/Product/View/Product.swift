//
//  Product.swift
//  shoes store
//
//  Created by Manoj Shrees on 21/8/2024.
//

import SwiftUI

struct Product: View {
    
    // it'd 
    var data : ProductsModel
    
    @State var SelectSize = 40
    
    @Environment(\.presentationMode) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    LazyVStack{
                        ZStack(alignment: .top){
                            LazyVStack{
                                ImageSlider(images: data.images)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 50))
                                    .padding(10)
                            }
                            
                            
                            //Navigation
                            HStack{
                                Image(systemName:  "arrow.left")
                                    .onTapGesture {
                                        dismiss.wrappedValue.dismiss()
                                    }
                                    .padding(.vertical, 25)
                                    .padding(.horizontal, 17)
                                    .imageScale(.large)
                                  
                                
                                Spacer()
                                
                                Image(systemName: "heart")
                                    .padding(.vertical, 25)
                                    .padding(.horizontal, 17)
                                    .imageScale(.large)
                               
                            }
                            .padding(.top, safeArea().top)
                            .padding(.horizontal, 30)
                            .imageScale(.large)
                        }
                        
                        
                        // images with there name in lowercase
                        Image(data.brand.lowercased())
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text(data.title)
                            .font(.largeTitle.bold())
                        
                        Text("$\(data.price)")
                            .font(.title2.bold())
                        
                        VStack(alignment: .leading, content: {
                            Text("Size")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(data.sizes, id: \.self){ item in
                                        Text("\(item)")
                                            .font(.headline)
                                            .frame(width: 70, height: 70)
                                            .background(SelectSize ==  item ? .black : .gray.opacity(0.06))
                                            .foregroundStyle(SelectSize ==  item ? .white : .black)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                        
                                            .onTapGesture {
                                                SelectSize = item
                                            }
                                        
                                    }
                                }
                            }
                            .scrollIndicators(.hidden)
                        })
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Details")
                                .font(.title2.bold())
                            
                            Text(data.description)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        }.padding()
                        
                        
                    }
                }
                
                //botton bar
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("$\(data.price)")
                            .font(.title2.bold())
                    }
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 60)
                    .background(.gray.opacity(0.06))
                    .clipShape(.rect(cornerRadius: 25))
                    
                    
                    Button("Add to Cart"){
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.black)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .clipShape(.rect(cornerRadius: 25))
                    .fontWeight(.semibold)
                }.padding(.horizontal)
                
                
            }.edgesIgnoringSafeArea(.top)
        }
    }
}



extension View{
    func safeArea() -> UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return .zero
        }
        
        return safeArea
    }
}
