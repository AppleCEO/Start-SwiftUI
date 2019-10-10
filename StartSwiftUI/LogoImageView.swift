//
//  LogoImageView.swift
//  StartSwiftUI
//
//  Created by Seokho on 2019/10/10.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI

struct LogoImageView: View {
    let logoimageViewModel: LogoImageViewModel
    
    var body: some View {
        VStack {
            Image(logoimageViewModel.imageName)
                .resizable()
                .frame(width: logoimageViewModel.imageWidth, height: logoimageViewModel.imageHeight, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            if logoimageViewModel.title != nil {
                Text(logoimageViewModel.title!)
                       .font(Font.system(.largeTitle))
                       .foregroundColor(Color(UIColor.systemBlue))
            }
   
        }
    }
}

struct LogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        LogoImageView(logoimageViewModel: LogoImageViewModel(title: "TEST"))
    }
}
