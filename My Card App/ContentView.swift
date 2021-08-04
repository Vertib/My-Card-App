//
//  ContentView.swift
//  My Card App
//
//  Created by Nikita Aksenkin on 04/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.80, blue: 0.47).ignoresSafeArea()
            VStack {
                Image("Photo").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
                    .stroke(lineWidth: 5))
                Text("Аксенкин Никита")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS Developer / Student BMSTU")
                    .font(.headline)
                    .fontWeight(.light)
                Card(image: "phone.fill", message: "+79999999999")
                Card(image: "envelope.fill", message: "vertibs@gmail.com")

            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
                         struct Card: View {
                            let image: String
                            let message: String
                            var body: some View {
                                RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {
                                    Image(systemName: image)
                                    Text(message)
                                        .fontWeight(.semibold)
                                }.foregroundColor(Color(red: 0.96, green: 0.80, blue: 0.47)))
                            }
                         }
                         
