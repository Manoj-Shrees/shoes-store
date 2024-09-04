//
//  Sign-in.swift
//  shoes store
//
//  Created by Manoj Shrees on 19/8/2024.
//

import SwiftUI

struct Sign_in: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    @Environment(\.presentationMode) var dismiss
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading,  spacing: 40, content: {
                
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss.wrappedValue.dismiss()
                    }
                
                VStack(alignment: .leading, spacing: 15,  content: {
                    Text("Sign-in")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Enter your email address and password to continue shopping.")
                        .font(.callout )
                })
                
                
                VStack(spacing: 15, content: {
                    
                    TextField("Email Address", text: $email)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                        .overlay{
                            Capsule()
                                .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                        }
                    
                    
                    SecureField("Password", text: $password)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                        .overlay{
                            Capsule()
                                .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                        }
                    
                    Spacer()
                    
                    // Login Button
                    Button{
                        
                    } label: {
                        Text("Continue")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 60)
                    .background(.red)
                    .clipShape(Capsule())
                    .foregroundStyle(.white)
                    
                    NavigationLink {
                        Sign_up()
                    } label: {
                        Text("Not having account? **Signup**")
                            .frame(maxWidth: .infinity)
                        
                    }
                    .foregroundStyle(.white)
                })
                
                
                
                
                
            })
            .padding()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    Sign_in()
}
