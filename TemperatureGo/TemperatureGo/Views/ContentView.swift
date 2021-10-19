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
           
                .padding()
            Text("Your personal Temperature converter")
                .font(.subheadline)
                .foregroundColor(Color.secondary)
            Spacer()
            Picker("Choose a temperature baseline", selection: $selectedTemp) {
                ForEach (temperatureTypes, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.wheel)
            .background(Color.gray)
            .cornerRadius(4)
            .padding()
            
                        
            HStack {
                Text("Degrees:")
                    .font(.callout)
                    .bold()
                TextField("Temperature", text: $tempInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            

            Button(action: {

            }, label: {
                Text("Convert")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .padding(.horizontal)
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
