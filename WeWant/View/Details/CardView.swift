//
//  CardView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/17.
//

import SwiftUI

struct CardView: View{

    @State var want: Want
    
    var body: some View{
       
        VStack(alignment: .leading){
            Image(want.image)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("배동훈")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(want.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    Text(want.date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    }
                .layoutPriority(100)
                Spacer()            
                }
        .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB,red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(want: WantList.wantList.first!)
    }
}
