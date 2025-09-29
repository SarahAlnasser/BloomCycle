//
//  ContentView.swift
//  BloomCycle
//
//  Created by Sarah Alnasser on 28/09/2025.
//
import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = ""
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            
            
            
            // calendar✅
            HStack {
                Button { } label: {
                    Image(systemName: "calendar")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundColor(Color.darkbrown)
                                    .padding(8)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(.top, 16)
            .padding(.trailing, 16)
            
            
            
            
            //name✅
            VStack (spacing: 0){
                HStack {
                                Text("Hello!")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.darkbrown)

                                // Editable part
                                TextField("Name", text: $userName)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(userName.isEmpty ? .gray : Color.darkbrown)
                                    .underline(userName.isEmpty, color: .gray)
                                    .frame(maxWidth: 150)
          
                            }
                .fixedSize()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.top, 45)
            
            
            
            
            //phase name and button✅
            VStack(spacing: 90){
                Text("Phase Name")
                    .font(.title)
                    .foregroundColor(Color.darkbrown)
            Button { } label: {
                Text("My Cycle")
                    .font(.headline)
                    .foregroundColor(Color.darkbrown)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 36)
                    .background(RoundedRectangle(cornerRadius: 16)
                        .fill(Color.ourgreen)
                        )
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.black.opacity(0.15), lineWidth: 2)
                        )
                    .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 4)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.top, 240)
            
            

            
            
            
            
            
            // buttons✅
            HStack(spacing: 24) {

                Button { } label: {
                    VStack(spacing: 22) {
                        Image("food_image_home")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 110)
                        Text("Food")
                            .font(.headline)
                            .foregroundColor(Color.darkbrown)
                    }
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, minHeight: 230)
                    .background(RoundedRectangle(cornerRadius: 16).fill(Color.eggshell))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.darkbrown.opacity(0.15), lineWidth: 2))
                    .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 4)
                }

                Button { } label: {
                    VStack(spacing: 22) {
                        Image("recomm_image_home")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 110)
                        Text("recom")
                            .font(.headline)
                            .foregroundColor(Color.darkbrown)
                    }
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, minHeight: 230)
                    .background(RoundedRectangle(cornerRadius: 16).fill(Color.eggshell))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.darkbrown.opacity(0.15), lineWidth: 2))
                    .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 4)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.horizontal, 40)
            .padding(.bottom, 60)

            Text("test")
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
