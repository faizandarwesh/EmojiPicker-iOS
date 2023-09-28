//
//  ContentView.swift
//  EmojiPicker
//
//  Created by faizan darwesh on 27/09/2023.
//

import SwiftUI

enum Emoji : String, CaseIterable{
   case 😍,😎,👿,👨‍🏭
}

struct ContentView: View {
    
    @State var selection : Emoji = .😎
    var body: some View {
        NavigationView{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji",selection: $selection){
                    ForEach(Emoji.allCases,id: \.self){
                        emoji in Text(emoji.rawValue).font(.system(size: 50))
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding()
            .navigationBarTitle("Emoji Picker",displayMode: .large)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
