//
//  ContentView.swift
//  Shared
//
//  Created by Hector Vazquez on 10/31/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        
        
        VStack{
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            Spacer()
            
                Button {
                    //generate a number between 2 and 13
                    let playerRand  = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    //update the cards and score
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand
                    {
                        playerScore += 1
                    }else if playerRand < cpuRand
                    {
                        cpuScore += 1
                    }else
                    {
                        //TIE - Do Nothing
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                
            
            Spacer()
            HStack{
                Spacer()
                VStack {
                    Text("Player")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(playerScore))
                        .font(.largeTitle)
                }
                Spacer()
                VStack {
                    Text("CPU")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                }
                Spacer()
            }
            .foregroundColor(Color.white)
            Spacer()
        }
        .background(Image("background"))
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
