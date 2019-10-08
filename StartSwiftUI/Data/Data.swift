//
//  Data.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI

final class LandmarkData {
    static let share = LandmarkData()
    var landmarkData = [Landmark]()
    
    private func loadData() -> [Landmark] {
        let decoder = JSONDecoder()
        
       if let landmarkDataAsset = NSDataAsset(name: "landmarkData")   {
            do {
                let landmark = try decoder.decode([Landmark].self, from: landmarkDataAsset.data)
                
                return landmark
            }catch{
                print(error.localizedDescription)
            }

        }
        
        return [Landmark]()
    }

    private init() {
        self.landmarkData = loadData()
    }
}





