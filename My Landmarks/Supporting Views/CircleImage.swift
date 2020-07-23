//
//  CircleImage.swift
//  My Landmarks
//
//  Created by  Aleksandr on 23.07.2020.
//  Copyright © 2020  Aleksandr. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 20)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("dolina"))
    }
}
