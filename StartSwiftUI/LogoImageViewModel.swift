//
//  LogoImageViewModel.swift
//  StartSwiftUI
//
//  Created by Seokho on 2019/10/10.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import Foundation
import CoreGraphics

class LogoImageViewModel {
    var imageName: String
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var title: String?
    
    init(imageName: String = "swiftui",title: String?, imageWidth: CGFloat = 200, imageHeight: CGFloat = 200) {
        self.imageName = imageName
        self.title = title
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
    }
}
