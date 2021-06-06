//
//  FormRowStaticView.swift
//  TodoSwiftUi
//
//  Created by macbook on 22/02/21.
//

import SwiftUI

struct FormRowStaticView: View {
    
    
    var icon: String
    var firstText: String
    var secondText: String
    
    var body: some View {
        HStack{
        ZStack{
        RoundedRectangle(cornerRadius:8, style: .continuous)
            .fill(Color.gray)
        Image(systemName: icon)
            .foregroundColor(.white)
    }
        .frame(width: 36, height: 36,alignment: .center)
            
            Text(firstText).foregroundColor(.gray)
            Spacer()
            Text(secondText)
        }

    }
}
