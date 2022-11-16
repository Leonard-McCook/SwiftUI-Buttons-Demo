//
//  ContentView.swift
//  test project
//
//  Created by Leonard McCook-Carr on 11/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(backgroundColor)
                .frame(width: UIScreen.main.bounds.width, height: 200)
                .ignoresSafeArea()
            
            Button("Click Here") {
                backgroundColor = Color.pink
            }
            
            Button {
                backgroundColor = Color.purple
            } label: {
                Text("Change Color to Purple")
                    .font(.headline)
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button {
                backgroundColor = Color.blue
            } label: {
                Text("Change Color to Blue")
                    .font(.headline)
                    .padding(.horizontal, 72)
                    .padding(.vertical, 16)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            
            Button {
                self.backgroundColor = .green
            } label: {
                Circle()
                    .fill(Color.green)
                    .frame(width: 80, height: 80)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    )
                    .shadow(radius: 8)
            }
            Button {
                self.backgroundColor = .yellow
            } label: {
                Image(systemName: "bell")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            
            
            Button {
                self.backgroundColor = .brown
            } label: {
                Image(systemName: "car")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
                    .background(Color.brown)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            
            Button ("Click Me", action: {
                
                print("Hello World")
                
            })
                
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
