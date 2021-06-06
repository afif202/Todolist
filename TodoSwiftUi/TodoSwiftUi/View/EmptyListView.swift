//
//  EmptyListView.swift
//  TodoSwiftUi
//
//  Created by macbook on 18/02/21.
//

import SwiftUI

struct EmptyListView: View {
    @State private var isAnimated : Bool = false
    
    let images : [String] = [
        "ilustration-no1",
        "ilustration-no2",
        "ilustration-no3"
 ]
    
    let tips : [String] = [
        "jangan menunda nunda apapun itu",
        "Tidurlah jika mengantuk",
        "Tidurlah secukupnya",
        "sudah itu saja"
    ]
    
    var body: some View {
        ZStack{
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                Image("\(images.randomElement() ?? self.images[0])")
                    .resizable()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("\(tips.randomElement() ?? self.tips[0])").font(.system(.headline, design: .rounded))
            }
            .padding(.horizontal)
            .opacity(isAnimated ? 1 : 0) //bentuk if else lebih singkat
            .offset(y: isAnimated ? 0: -56)
            .animation(.easeOut(duration: 1.5))//animasi yang awalnya muncul cepat dan diakhiran melambat
            .onAppear(perform: {
                self.isAnimated.toggle()
            })
        }
        .frame(minWidth: 0 ,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
              }
          }
struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView().environment(\.colorScheme , .dark)
    }
}
