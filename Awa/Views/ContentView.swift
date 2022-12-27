//
//  ContentView.swift
//  Awa
//
//  Created by Ode on 2022/12/20.
//  

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            ZStack (alignment: .center){
                Rectangle()
                    .foregroundColor(Color("GloriousLightGrey"))
                VStack{
                    WordCard()
                        .cornerRadius(10.0)
                        .shadow(color: Color("ShadowGrey"), radius: 10)

                }
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 50, trailing: 30))


            }
            

            ZStack (alignment: .center){
                Rectangle()
                    .foregroundColor(Color("GloriousWhite"))
                    .shadow(color: Color("LightShadowGrey"), radius: 30, y: 20)
                VStack {
                        WordCount()
                            .cornerRadius(10.0)
                            .shadow(color: Color("ShadowGrey"), radius: 10)
                        
                }
                .padding(.all, 30.0)

            }
        }
        .background(Color("GloriousWhite"))
            .frame(minWidth: 600, minHeight: 700)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
