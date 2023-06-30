//
//  ContentView.swift
//  UberEatMenu
//
//  Created by 李竑陞 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["food_guide", "Good_Food_Display", "table-filled", "traditional-food"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tampa Bay")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()

            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(images, id: \.self) { image in
                        VStack {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 140)
                                .clipped()
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Food")
                                        .font(.system(size: 14))
                                        .fontWeight(.semibold)
                                    
                                    Text("Banana, Fruit, and Vegetable.")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                    
                                Text("4.5")
                                    .font(.caption2)
                                    .padding(6)
                                    .background(Color(.systemGray5))
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
