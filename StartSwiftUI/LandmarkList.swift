//
//  LandmarkList.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(LandmarkData.share.landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(mainDataViewModel: MainDataViewModel(landmark: landmark))) {
                    LandmarkRow(mainDataViewModel: MainDataViewModel(landmark: landmark))
                }
            }
            .navigationBarTitle(Text("Landmark"), displayMode: .automatic)
        }
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
