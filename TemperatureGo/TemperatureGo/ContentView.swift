//
//  ContentView.swift
//  TemperatureGo
//
//  Created by Joel Sereno on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var tempInput = ""
    let temperatureTypes = ["Fahrenheit", "Celsius"]
   
    @State private var selectedTemp = "Fahrenheit"
    
    //MARK: - VIEW
    var body: some View {
        
        VStack {
            Text("Temperature Go!")
                .font(.system(.title, design: .rounded))
                .bold()
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
           
                //.padding()
            Text("Your personal Temperature converter")
                .font(.subheadline)
                .foregroundColor(Color.secondary)
            Spacer()
            
            HStack {
                Text("Degrees:")
                TextField("Temperature", text: $tempInput)
            }
            Picker("Choose a tempature baseline", selection: $selectedTemp) {
                ForEach (temperatureTypes, id: \.self) {
                    Text($0)
                }
            }
            
            Button(action: {
                
            }, label: {
                Text("Convert")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .background(Color.green)
                    .cornerRadius(4)
            })
            Spacer()
            
            Text("Result")

        }
    }
    
    //MARK: - FUNCTIONS
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
