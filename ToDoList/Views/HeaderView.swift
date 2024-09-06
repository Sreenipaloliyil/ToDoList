//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/24/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(.degrees(angle))
            VStack(alignment: .center, content: {
                Text(title)
                    .font(.largeTitle)
                    .padding(.top, 16)
                Text(subtitle)
                    .font(.title)
            })
            .padding(.top, 30)
        })
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: Color.pink)
}
