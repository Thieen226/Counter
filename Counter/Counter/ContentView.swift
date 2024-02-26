//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    //declare variable and use state to keep track of count variable
    var body: some View {
        VStack {
            //make the all the components horizontally
            Text("Click buttons below to change the counter")
            //add text
            Text("\(count)")
            //keep track of the counter
                .padding()
            HStack{
                Button("Increment", action: {
                    counterIncrement()
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Decrement", action: {
                    counterDecrement()
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
    }
    func counterIncrement(){
        count += 1
        
    }
    func counterDecrement(){
        count -= 1
        if count == 0{
            count = 0
        }
    }
}

#Preview {
    ContentView()
}
