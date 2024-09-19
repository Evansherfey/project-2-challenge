import SwiftUI

struct ContentView: View {
    @State private var inputAmount = ""
    @State private var unitInput = 0
    @State private var unitOutput = 0
    
    var outputAmount: Double {
        let input = Double(inputAmount) ?? 0
        let inputAsMeter = input / rates[unitInput]
        
        return inputAsMeter * rates[unitOutput]
    }
    
    let units = ["meters", "kilometers", "feet", "yard", "miles"]
    let rates = [1.0, 0.001, 3.28084, 1.09361, 0.000621371]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("convert from")) {
                    TextField("Amount", text: $inputAmount)
                        .keyboardType(.decimalPad)
                    Picker("Unit", selection: $unitInput) {
                    }
                }
            }
        }
    }
}
