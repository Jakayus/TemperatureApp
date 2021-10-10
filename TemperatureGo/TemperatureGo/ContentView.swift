//
//  ContentView.swift
//  TemperatureGo
//
//  Created by Joel Sereno on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    
    
    
    var body: some View {
        
        VStack {
            Text("Temperature Go")
                //.padding()
            Text("Your personal Temperature converter")
                .font(.caption2)
            
            HStack {
                Text("Degrees")
                Text("Type")
            }
            
            Button(action: {
                
            }, label: {
                Text("Convert")
            })
            
            
            Text("Result")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
