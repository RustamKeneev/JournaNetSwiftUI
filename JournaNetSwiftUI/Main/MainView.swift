//
//  MainView.swift
//  JournaNetSwiftUI
//
//  Created by Rustam Keneev on 15/5/24.
//

import SwiftUI

struct MainView: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            // Основное содержимое  приложения
            Color(hex: "020C1E")
                .edgesIgnoringSafeArea(.all)

            Text("Hello World")
                .foregroundColor(.white)
            // Кастомный экран загрузки, который будет показан, когда isLoading = true
            if isLoading {
                CustomLoadingView()
            }
        }
        .onAppear {
            //  логика загрузки данных
            self.isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.isLoading = false // Загрузка завершена
            }
        }
    }
}

#Preview {
    MainView()
}
