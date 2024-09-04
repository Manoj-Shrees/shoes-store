//
//  Sign-up.swift
//  shoes store
//
//  Created by Manoj Shrees on 20/8/2024.
//

import SwiftUI


struct Sign_up: View {
    
    
    @State private var username: String = ""
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
                    Text("Sign-up")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Enter your email address and password to continue shopping.")
                        .font(.callout )
                })
                
                
                VStack(spacing: 15, content: {
                    
                    
                    TextField("username", text: $username)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                        .overlay{
                            Capsule()
                                .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                        }
                    
                    
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
                        Sign_in()
                    } label: {
                        Text("Already have an account? **Sign-in**")
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
    Sign_up()
}
