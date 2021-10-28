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
    @State private var tempOutput = 0.0
    @State private var boolTest = false
    @State private var textOutput = "Awaiting Results..."
    
    //MARK: - VIEW
    var body: some View {
        
        VStack {
            Text("Temperature Go!")
                .font(.system(.title, design: .rounded))
                .bold()
                .padding()
                .background(ColorManager.custom_blue)
                .cornerRadius(5)
                .padding()
            Text("Your personal Temperature converter")
                .font(.subheadline)
                .foregroundColor(Color.secondary)
            Spacer()
            Text("Starting Temperature")
                .font(.subheadline)
            Picker("Choose a temperature baseline", selection: $selectedTemp) {
                ForEach (temperatureTypes, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.wheel)
            .background(ColorManager.custom_purple)
            .cornerRadius(4)
            .padding()
            .padding(.horizontal)
            
                        
            HStack {
                Text("Degrees:")
                    .font(.callout)
                    .bold()
                TextField("Temperature", text: $tempInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            

            Button(action: {
                
                
                tempOutput = Double(tempInput) ?? -999.0
                
                if tempOutput != -999.00 {
                    boolTest = true
                    
                    if selectedTemp == "Fahrenheit" {
                        tempOutput = convertToCelsius(tempOutput)
                        
                    }
                    else {
                        tempOutput = convertToFahrenheit(tempOutput)
                    }
                }
                else {
                    boolTest = false
                }
               
                textOutput = "\(boolTest ? "\(tempOutput)" : "Please enter a valid value")"
                
                
            }, label: {
                Text("Convert")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .background(ColorManager.custom_green)
                    .cornerRadius(4)
                
            })
            Spacer()
            
            Text("Result: \(textOutput)")

            
            
        }
    }
    
    //MARK: - FUNCTIONS
    
    func convertToCelsius(_ input : Double) -> Double {
        var celsius =  (input - 32) * (5/9)
        
        celsius = Double(round(100 * celsius)/100)
        
        return celsius
    }
    
    func convertToFahrenheit(_ input : Double) -> Double {
        var fahrenheit =  (input * (9/5)) + 32
        
        fahrenheit = Double(round(100 * fahrenheit)/100)
        
        return fahrenheit
    }

    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
