//
//  CircleImage.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white,lineWidth: 4)
            }
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.8), radius: 7, x: 2, y: 2)
//            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
