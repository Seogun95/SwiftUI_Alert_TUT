//
//  ContentView.swift
//  SwiftUI_Alert_TUT
//
//  Created by 김선중 on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    //showAlert의 bool 타입을 false로 설정
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("Alert 메세지") {
            self.showingAlert.toggle()
        }
        .foregroundColor(.white)
        .padding()
        //그라데이션
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(30)
        .font(.system(size: 30))
        
        .alert(isPresented: $showingAlert) {
            let firstButton = Alert.Button.default(Text("구독")) {
                print("primary button pressed")
            }
            let secondButton = Alert.Button.cancel(Text("좋아요")) {
                print("secondary button pressed")
            }
            return Alert(title: Text("서근 개발블로그"),
                         message: Text("구독과 좋아요중에 선택해주세요"),
                         primaryButton: firstButton, secondaryButton: secondButton)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
