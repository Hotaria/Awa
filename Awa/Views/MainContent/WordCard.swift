//
//  WordCard.swift
//  Awa
//
//  Created by 吴书让 on 2022/12/21.
//

import SwiftUI

struct BlackButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 13.0)
            .background(Color("GloriousDark"))
            .clipShape(Capsule())
            .foregroundColor(Color("GloriousWhite"))
            .shadow(color: Color("ShadowGrey"), radius: 2)
    }
}
struct BlackBorderButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 13.0)
            .background(Color("GloriousWhite"))
            .clipShape(Capsule())
            .foregroundColor(Color("GloriousDark"))
            .shadow(color: Color("ShadowGrey"), radius: 2)
    }
}


struct WordCard: View {
    var body: some View {
        
        VStack {
            VStack {
                VStack (alignment: .leading){
                    Text("Abandon")
                        .font(.title)
                        .foregroundColor(Color("GloriousDark"))
                    Text("[əˈbændən]")
                        .font(.footnote)
                        .foregroundColor(Color("GloriousGrey"))
                    
                    Text("""
                         vt. 放弃(信念); (不顾责任、义务等)离弃，遗弃，抛弃; (不得已而)舍弃，丢弃，离开; 停止(支持或帮助); 中止; 陷入，沉湎于（某种情感）;n.    放任; 放纵;
                        """)
                    .foregroundColor(Color("GloriousDark"))
                }
                    
                Spacer()
                Spacer()
                HStack (alignment: .center){
                    Spacer()
                    Button(action: {
                                print("Clicked")
                    }, label: {
                                Text("认识")
                                    .font(.title2)
                                    .padding(.horizontal)
                    }).buttonStyle(BlackButton())
                    Spacer()
                    Button(action: {
                        print("Clicked")
                    }, label: {
                        Text("忘记")
                            .font(.title2)
                            .padding(.horizontal)
                    }).buttonStyle(BlackBorderButton())
                    Spacer()
                }
            }
            .padding(.all, 40.0)
        }
        .background(Color("GloriousWhite"))


    }
}

struct WordCard_Previews: PreviewProvider {
    static var previews: some View {
        WordCard()
    }
}
