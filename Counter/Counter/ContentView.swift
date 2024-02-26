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
            //make the all the components vertically
            Text("Click buttons below to change the counter")
            //add text
            Text("\(count)")
            //keep track of the counter
                .padding()
                //add padding to the components
            HStack{
                //make all the buttons horizontally
                Button("Increment", action: {
                    counterIncrement()
                        //call the function
                })
                //add styling to the first button
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Decrement", action: {
                    counterDecrement()
                    //call the function
                })
                //add styling to the second button
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
    }
    func counterIncrement(){
        //if counter is 50, stop incrementing
        if count == 50{
            count += 0
        }
        //else continue adding
        else{
            count += 1
        }
        
    }
    func counterDecrement(){
        //if counter is less or equal to 0, set the counter to 0
        if count <= 0{
            count = 0
        }
        //if counter is greater than 0, continue decrementing
        else{
            count -= 1
        }
    }
}

#Preview {
    ContentView()
}
