//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Catia Miranda de Souza on 17/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDicenumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDicenumber)
                }
                .padding(.horizontal)
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDicenumber = Int.random(in: 1...6)
                }
                ) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                   
                }
                .background(Color.red)
            }
        }
    }
}
struct DiceView: View {
    
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


