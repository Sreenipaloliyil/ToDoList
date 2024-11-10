//
//  TLButton.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/6/24.
//

import SwiftUI

struct TLButton: View {
    
    var title: String
    var background: Color = .blue
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 36)
                .background(background)
                .cornerRadius(6.0)
        })
    }
}

#Preview {
    TLButton(title: "Log In", background: .blue, action:{ /*Action*/ })
}
