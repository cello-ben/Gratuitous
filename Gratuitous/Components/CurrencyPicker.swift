//
//  CurrencyPicker.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct CurrencyPicker: View {
    @Binding var currency: String
    let currencies: [String] = ["$", "£", "€"]
    var body: some View {
        VStack {
            Text("Currency:")
                .foregroundColor(Constants.acc)
            Picker("$", selection: $currency) {
                ForEach(currencies, id: \.self) { curr in
                    Text(curr).foregroundColor(Constants.acc).tag(curr)
                        
                }
            }.pickerStyle(.segmented)
        }
    }
}

struct CurrencyPicker_Previews: PreviewProvider {
    @State static var currency: String = "$"
    static var previews: some View {
        CurrencyPicker(currency: $currency)
    }
}
