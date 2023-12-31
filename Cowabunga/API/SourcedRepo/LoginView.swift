////
////  LoginView.swift
////  Evyrest
////
////  Created by exerhythm on 30.11.2022.
////
//
//import SwiftUI
//import HCaptcha
//
//struct LoginView: View {
//
//    @Environment(\.presentationMode) var presentationMode
//
//
//    @State var username = ""
//    @State var password = ""
//    @State var validationToken: String? = "a"
//
//    @EnvironmentObject var sourceRepoFetcher: SourcedRepoFetcher
//
//    var body: some View {
//        VStack {
//            VStack {
//                Image(uiImage: Bundle.main.icon!)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.accentColor)
//                    .frame(width: 64)
//                    .cornerRadius(16)
//                    .padding(.top, 32)
//                Text("Log in Sourced")
//                    .font(.system(size: 32, weight: .bold))
//                    .multilineTextAlignment(.center)
//                HStack {
//                    Image(systemName: "lanyardcard")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .foregroundColor(.accentColor)
//                        .frame(height: 24)
//                    Text("Please log into your Sourced Repo account to continue")
//                        .padding(10)
//                }
//                TextField("Email", text: $username)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(4)
//                    .autocapitalization(.none)
//                SecureField("Password", text: $password)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.horizontal, 4)
//
//                Button(action: {
//
//                }) {
//                    HStack {
//                        Image(systemName: validationToken == nil ? "square" : "checkmark.square.fill")
//                        Text("I'm not a robot (no cap)")
//                            .foregroundColor(Color(uiColor14: .label))
////                        Spacer()
//                    }
//                }
//                .padding(.vertical, 8)
//                .disabled(validationToken != nil)
//            }
//            HCaptchaView(onSuccess: { token in
//                print("validation token = \(token)")
//            })
//            Spacer()
//            VStack {
//                Button("Forgot password?") {
//                    UIApplication.shared.alert(body: "That's unfortunate 🧌.\n Contact us on Discord if your account is really valuable.")
//                }
//                .padding(4)
//                Button(action: {
//
//                    Task {
//                        do {
//                            try await sourceRepoFetcher.login(username: username, password: password)
//                            try await sourceRepoFetcher.linkDevice()
//                            presentationMode.wrappedValue.dismiss()
//                        } catch {
//                            DispatchQueue.main.async {
//                                UIApplication.shared.alert(body: "\(error.localizedDescription)")
//                            }
//                        }
//                    }
//                }) {
//                    Text("Log in")
//                        .padding(12)
//                        .frame(maxWidth: .infinity)
//                        .background(Color.accentColor)
//                        .foregroundColor(.white)
//                        .cornerRadius(12)
//                }
//                Button(action: {
//                    Task {
//                        do {
//                            try await sourceRepoFetcher.login(username: username, password: password)
//                            try await sourceRepoFetcher.linkDevice()
//                            presentationMode.wrappedValue.dismiss()
//                        } catch {
//                            DispatchQueue.main.async {
//                                UIApplication.shared.alert(body: "\(error.localizedDescription)")
//                            }
//                        }
//                    }
//                }) {
//                    Text("Sign up")
//                        .padding(12)
//                        .frame(maxWidth: .infinity)
//                        .background(Color.accentColor)
//                        .foregroundColor(.white)
//                        .cornerRadius(12)
//                }
//            }
//        }
//        .padding()
//        .frame(maxWidth: 325, maxHeight: .infinity)
//    }
//}
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
