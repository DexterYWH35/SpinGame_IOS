//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Dexter Yap on 22/02/2022.
//

import SwiftUI

struct ContentView: View {
    //Global Objects
    @State var playerScore: Int = 0
    @State var slot1: String = "apple"
    @State var slot2: String = "apple"
    @State var slot3: String = "apple"
    
    let spinList: [String] = ["apple","cherry","star"]
    
    //View Code
    var body: some View {
        
        VStack {
            //Title
            Spacer()
            Text("SwiftUI Slots!")
                .font(.title)
                .fontWeight(.medium)
            //Score Credits
            Spacer()
            Text("Credits: \(playerScore)")
            Spacer()
            //Splits Results
            HStack(){
                Spacer()
                Image(slot1).resizable().aspectRatio( contentMode: .fit)
                Image(slot2).resizable().aspectRatio( contentMode: .fit)
                Image(slot3).resizable().aspectRatio( contentMode: .fit)
                Spacer()
            }
            
            
            Spacer()
            //Button
            Button {
            //Print new spins
                slot1 = spinList.randomElement() ?? "apple"
                slot2 = spinList.randomElement() ?? "apple"
                slot3 = spinList.randomElement() ?? "apple"
                
                if (slot1 == slot2 && slot1 == slot3 && slot2 == slot3){
                    playerScore += 100
                }else if (slot1 == slot2 || slot1 == slot3 || slot2 == slot3) {
                    playerScore += 50
                }else {
                    playerScore -= 100
                }
            }label: {
                Text("Spin")
            }
            Spacer()

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
