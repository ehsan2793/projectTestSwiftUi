//
//  LandmarkRow.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import SwiftUI

struct LandmarkRow: View {
    // MARK: - PROPERTIES

    var landmark: Landmark

    // MARK: - BODY

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            // FAVORITES
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

// MARK: - PREVIEW

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

