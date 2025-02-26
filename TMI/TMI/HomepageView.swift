//
//  HomepageView.swift
//  TMI
//
//  Created by Tommy Song on 7/6/24.
//

import SwiftUI

struct HomepageView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: blueView()){
                    Text("Blue Questions").frame(width: 300, height: 150, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: pinkView()){
                    Text("Pink Questions").frame(width: 300, height: 150, alignment: .center)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.green.opacity(0.3)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    HomepageView()
}
