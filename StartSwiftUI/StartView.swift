//
//  ContentView.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI

struct StartView: View {
    @ObservedObject var startViewModel: StartViewModel
    
    var body: some View {
        VStack {
            Spacer()
            LogoImageView(logoimageViewModel: LogoImageViewModel(title: "Busan iOS Study"))
            Spacer()
            Button(action: {
                self.startViewModel.isShow = true
            }) {
                Text("Let's Start!")
                    .font(Font.system(size: 30, weight: .bold, design: .default))
            }.sheet(isPresented: $startViewModel.isShow) {
                LandmarkList()
            }
            Spacer()
        }

        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(startViewModel: StartViewModel())
    }
}
