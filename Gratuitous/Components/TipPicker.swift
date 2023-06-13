//
//  TipPicker.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct TipPicker: View {
    let percentages: [String] = ["15", "18", "20", "25"]
    @Binding var tipPercentage: Double
    var body: some View {
        Picker("20%", selection: $tipPercentage) {
            ForEach(percentages, id: \.self) { percentage in
                Text(percentage + "%").tag(Double(percentage)! / 100)
            }
        }.pickerStyle(.segmented)
    }
}

struct TipPicker_Previews: PreviewProvider {
    @State static var pct: Double = 0.20
    static var previews: some View {
        TipPicker(tipPercentage: $pct)
    }
}
