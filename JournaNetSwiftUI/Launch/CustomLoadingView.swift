//
//  CustomLoadingView.swift
//  JournaNetSwiftUI
//
//  Created by Rustam Keneev on 15/5/24.
//

import SwiftUI

struct CustomLoadingView: View {
    //MARK: - PROPERTIES
    @State private var progress: CGFloat = 0.0
    
    //MARK: - BODY
       var body: some View {
           ZStack {
               Color(hex: "020C1E")
                   .edgesIgnoringSafeArea(.all)

               VStack {
                   Spacer()
                   Image("logo")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 100, height: 100)
                       .padding(.bottom, 50)
                   
                   GeometryReader { geometry in
                       ZStack(alignment: .leading) {
                           Rectangle().foregroundColor(Color.white.opacity(0.3)).frame(width: geometry.size.width, height: 10).cornerRadius(5)
                           Rectangle().foregroundColor(Color.blue).frame(width: min(self.progress, 1) * geometry.size.width, height: 10).cornerRadius(5)
                       }//: ZSTACK
                   }//: GEOMETRY READER
                   .frame(width: 190, height: 10)
                   .padding(.horizontal)
                   
                   Spacer()
               }//: VSTACK
           }//: ZSTACK
           .onAppear {
               self.startProgressAnimation()
           }//:ON APPEAR
       }//: BODY
       
       private func startProgressAnimation() {
           withAnimation(Animation.linear(duration: 5)) {
               self.progress = 1.0
           }//: WITH ANIMATION
       }//: FUNCTION PROGRESS ANIMATION
}

#Preview {
    CustomLoadingView()
}
