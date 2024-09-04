//
//  Onboarding.swift
//  shoes store
//
//  Created by Manoj Shrees on 19/8/2024.
//

import SwiftUI


struct Onboarding : View {
    
    @State private var isActive = false
    // add animation property
    @State private var isExpanded = false
    @State private var offset = CGSize.zero

    
    var body: some View {
        if isActive{
            ContentView()
                .environment(\.colorScheme, .light)
        }
        
        else{
            
            ZStack(alignment: .top){
                VStack{
                    Spacer()
                    // Add a blue color cirle to bottom center.
                    
                    Circle()
                        .fill(
                            RadialGradient(colors: [.gray, .clear , .clear, .clear], center: .center, startRadius: 0, endRadius: UIScreen.main.bounds.width))
                        .scaleEffect(isExpanded ? 20 : 2)
                        .padding(.bottom, -(UIScreen.main.bounds.width / 2))
                    
                }
                .frame(height: .infinity)
                .zIndex(isExpanded ? 2 : 0)
                
                VStack(spacing: 25, content: {
                    
                    Spacer()
                    
                    Image("jordern_shoes")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text("Start Journey\nWith Nike")
                        .font(.largeTitle.bold())
                        .multilineTextAlignment(.center)
                    
                    
                    VStack{
                        Image(systemName: "chevron.up")
                        
                        Text("Get Started")
                            .padding(.top)
                    }
                    .fontWeight(.medium)
                })
                
                .opacity(isExpanded ? 0 : 1)
                .offset(offset)
            }
            
            // add swipe up gestures (layout goes up )
            
            
            .gesture(DragGesture()
                .onEnded({ value in
                    if value.translation.height < 50{
                        withAnimation(.easeInOut(duration: 2)){
                            offset = value.translation
                            isExpanded = true
                        }
                        
                        // when swipe move to next screen
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                            withAnimation{
                                isActive.toggle()
                            }
                        }
                    }
                }))
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(
                Image("Onboardingbg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
        }
        
    }
}


#Preview {
    Onboarding()
}
