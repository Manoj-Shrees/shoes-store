//
//  ContentView.swift
//  shoes store
//
//  Created by Manoj Shrees on 19/8/2024.
//

import SwiftUI

struct Splash: View {
    
    @State var isActive = false
    
    var body: some View {
        VStack {
            if isActive{
                Onboarding()
            }
            else{
                Text("NIKE").font(.largeTitle.bold())
            }
        }
        .onAppear(){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5)
            {
                withAnimation{
                    isActive = true
                }
            }
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    Splash()
}
