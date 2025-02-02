//
//  WelcomeView.swift
//  TorchUI
//
//  Created by Parth Saxena on 8/2/23.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to Torch")
                .kerning(-1)
                .font(Font.custom("Manrope-Semibold", size: 30))
                .foregroundColor(colorScheme == .dark ? Color.white : Color(red: 0.18, green: 0.21, blue: 0.22))
                .padding(.top, 60)
            
            Spacer()
                .frame(height: 12)
            
            Text("Our app uses sensors to detect smoke and heat, and instantly sends you an alert on your phone.\nStay safe with our fire detection app!")
                .font(Font.custom("Manrope-Medium", size: 16))
                .kerning(-0.5)
//                .foregroundColor(CustomColors.LightGray)
                .foregroundColor(Color(red: 0.45, green: 0.53, blue: 0.55))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 15)
            
            Spacer()
            
            // Next button
            HStack {
                Spacer()
                
                Button(action: {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                                        
                    AuthenticationManager.shared.authState = .accountName
                }) {
                    Text("Sign up")
                    .font(.custom("Manrope-SemiBold", size: 16))
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .foregroundColor(colorScheme == .dark ? CustomColors.TorchGreen : .white)
                    .background(
                        RoundedRectangle(cornerRadius: 100)
                            .foregroundColor(colorScheme == .dark ? Color.white : CustomColors.EnabledButtonColor)
                    )
                    .padding(.horizontal, 16)
                    .padding(.bottom, 20)
                }
                
//                Button("Sign up") {
//                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
//                    impactMed.impactOccurred()
//
//                    AuthenticationManager.shared.authState = .accountName
//                }
//                .font(.custom("Manrope-SemiBold", size: 16))
//                .frame(maxWidth: .infinity)
//                .frame(height: 60)
//                .foregroundColor(colorScheme == .dark ? CustomColors.TorchGreen : .white)
//                .background(
//                    RoundedRectangle(cornerRadius: 100)
//                        .foregroundColor(colorScheme == .dark ? Color.white : CustomColors.EnabledButtonColor)
//                )
//                .padding(.horizontal, 16)
//                .padding(.bottom, 20)
                Spacer()
            }
            
            // Continue with google
            HStack {
                Spacer()
                Button {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                } label: {
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(CustomColors.EnabledButtonColor)
                        .overlay(
                            HStack {
                                Image("GoogleIcon")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                
                                Text("Continue with Google")
                                    .foregroundColor(colorScheme == .dark ? Color.white : CustomColors.TorchGreen)
                            }
                        )
                }
                .font(.custom("Manrope-SemiBold", size: 16))
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .foregroundColor(CustomColors.TorchGreen)
                .background(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(colorScheme == .dark ? Color.white : CustomColors.EnabledButtonColor)
                )
                .padding(.horizontal, 16)
                .padding(.bottom, 20)
                Spacer()
            }
            .padding(.top, -15)
            
            // Log in
            HStack {
                Spacer()
                
                Button {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                    
                    AuthenticationManager.shared.authState = .login
                } label: {
                    Text("Log in")
                        .font(Font.custom("Manrope-SemiBold", size: 16.0))
                        .foregroundColor(Color(red: 0.45, green: 0.53, blue: 0.55))
                }
                
                Spacer()
            }
            .padding(.bottom, 30)
        }
        .background(colorScheme == .dark ? CustomColors.DarkModeBackground : Color.white)
    }
}

struct LoadingSplashScreen: View {
    var body: some View {
        VStack {
            Image("LaunchScreenBackgroundLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
        }
        .ignoresSafeArea()
        .background(Color(red: 1, green: 0.35, blue: 0.14))
        .animation(.easeInOut(duration: 0.2))
        
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Image("LaunchScreenImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 242)
                
                Spacer()
            }
            
            Spacer()
        }
        .ignoresSafeArea()
        .animation(.easeInOut(duration: 0.2))
    }
}

struct WelcomeView_Previews: PreviewProvider {
    @State static var state = AccountState.welcome
    
    static var previews: some View {
        AccountView()
    }
}
