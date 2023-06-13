//
//  CalculateButton.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct CalculateButton: View {
    var currency: String
    var totalAmountStr: String
    var tipPercentage: Double
    @Binding var tippedAmountStr: String
    var body: some View {
        Button {
            let amt: Double = InputSanitizer.sanitizeInput(input: totalAmountStr)
            
            if amt != 0.0 {
                let total = round(amt * (1.0 + tipPercentage) * 100) / 100
                let formatter = NumberFormatter()
                formatter.minimumFractionDigits = 2
                formatter.maximumFractionDigits = 2
                if let formatted = formatter.string(from: NSNumber(value: total)) {
                    tippedAmountStr = currency + formatted
                }
            } else {
                tippedAmountStr = ""
            }
            
            
        } label: {
            Text("Calculate")
                .foregroundColor(Constants.acc)
        }
    }
}

struct CalculateButton_Previews: PreviewProvider {
    @State static var tippedAmt: String = "132.47"
    static var previews: some View {
        CalculateButton(currency: "$", totalAmountStr: "110.39", tipPercentage: 0.20, tippedAmountStr: $tippedAmt)
    }
}
