//
//  WordCount.swift
//  Awa
//
//  Created by 吴书让 on 2022/12/21.
//

import SwiftUI

struct WordCount: View {
    @State var progress = 0.2
    var body: some View {

            VStack {
                VStack (alignment: .leading){
                        ProgressView(value: progress) {
                            Text("今日进度")
                                .font(.headline)
                                .foregroundColor(Color("GloriousDark"))
                            
                        }
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.teal))
                        HStack {
                            HStack{
                                Text("新词")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("23 / 70")
                                    .font(.title)
                            }
                            .foregroundColor(Color("GloriousDark"))
                            .padding(.trailing)
                            
                            HStack {
                                Text("复习")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("14 / 40")
                                    .font(.title)
                            }
                            .foregroundColor(Color("GloriousDark"))
                            .padding(.horizontal)
                        }
                }
                .padding(.all)
                Divider()
                VStack(alignment: .leading) {
                    Text("记录")
                        .font(.headline)
                        .foregroundColor(Color("GloriousDark"))
                    CountCalender()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
                .padding(.all)
            }
            .padding(.all)
            .background(Color("GloriousWhite"))
    }

}

struct WordCount_Previews: PreviewProvider {
    static var previews: some View {
        WordCount()
    }
}
