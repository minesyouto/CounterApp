//
//  ContentView.swift
//  CounterApp
//
//  Created by みねた on 2022/01/30.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Text("\(number)")
            Button(action: {self.number += 1}) { //この部分がボタンのアクション内容
                Text("カウント") //この部分がボタンの中身
                //ボタンは引数が値ではなく文になる
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
