//
//  ContentView.swift
//  CounterApp
//
//  Created by みねた on 2022/01/30.
//


import SwiftUI

struct ContentView: View {
    @State var number = 0 //@Stateというプロパティラッパーを置くとそのプロパティの値が更新されたときに自動的にiPhoneの画面が更新される→Ajaxに近いイメージ？
    var body: some View {
        VStack { //VStackを使って垂直方向にUI部品を並べている
            ZStack{ //画像と文字を重ねている
            Image("counter")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(number)")
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            }
            Button(action: {self.number += 1}) {
                Text("カウント")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10.0)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


