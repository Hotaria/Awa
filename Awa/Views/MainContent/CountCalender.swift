//
//  CountCalender.swift
//  Awa
//
//  Created by 吴书让 on 2022/12/24.
//

import SwiftUI

struct CountCalender: View {
    private struct NamedFont: Identifiable {
        let name: String
        let font: Font
        var id: String { name }
    }
    private let namedFonts: [NamedFont] = [
        NamedFont(name: "Large Title", font: .largeTitle),
        NamedFont(name: "Title", font: .title),
        NamedFont(name: "Headline", font: .headline),
        NamedFont(name: "Body", font: .body),
        NamedFont(name: "Caption", font: .caption)
    ]

    var body: some View {
        HStack {
            ForEach(1...7, id: \.self) { i in
                
                ZStack (alignment: .center) {
                    Circle()
                        .foregroundColor(Color("GloriousDark"))
                        .frame(width: 50)
                    Text("\(i)")
                        .font(.title)
                        .foregroundColor(Color("GloriousWhite"))
                }
                .frame(minWidth: 0, maxWidth: 700, minHeight: 0, maxHeight: .infinity)
            }
        }
        .padding(.all)
    }

}

struct CountCalender_Previews: PreviewProvider {
    static var previews: some View {
        CountCalender()
    }
}
