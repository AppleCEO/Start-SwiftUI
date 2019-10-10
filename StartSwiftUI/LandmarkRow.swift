//
//  LandmarkRow.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI
/*
 Spacer
 -> 포함된 주요 축에 따라 확장
 -> 스택에 포함되어있지 않은경우 두 축 모두로 확장
 */
struct LandmarkRow: View {
    var mainDataViewModel: MainDataViewModel
    
    var body: some View {
        HStack() {
            Image(mainDataViewModel.landmark.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(mainDataViewModel.landmark.name)
                .font(Font.system(size: 20, weight: .light, design: .default))
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(mainDataViewModel: MainDataViewModel(landmark:
                       LandmarkData.share.landmarkData[0]))
            LandmarkRow(mainDataViewModel: MainDataViewModel(landmark:
                       LandmarkData.share.landmarkData[1]))
        } .previewLayout(.fixed(width: 300, height: 70))
       
    }
}
