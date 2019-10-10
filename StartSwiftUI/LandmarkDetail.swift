//
//  LandmarkDetail.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var mainDataViewModel: MainDataViewModel
    var body: some View {
        VStack {
            LogoImageView(logoimageViewModel: LogoImageViewModel(imageName: mainDataViewModel.landmark.imageName,
                                                                 title: nil))
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(mainDataViewModel.landmark.name)
                    .font(.title)
                HStack {
                    Text(mainDataViewModel.landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(mainDataViewModel.landmark.state)
                        .font(.subheadline)
                }
            }.padding()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(mainDataViewModel: MainDataViewModel(landmark: LandmarkData.share.landmarkData[0]))
    }
}
