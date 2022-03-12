//
//  ContentView.swift
//  Bullseye
//
//  Created by LKT on 2021/7/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text(" PUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text(String(game.target))
                .bold()
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("I love you Olek")
                alertIsVisible = true
            }) {
                Text("HIT ME")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(sliderValue
                                                .rounded())
                return Alert(title: Text("Hello Baby <3"), message: Text("You hit \(roundedValue). <3\n" + "You scored\(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Love You Too")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
