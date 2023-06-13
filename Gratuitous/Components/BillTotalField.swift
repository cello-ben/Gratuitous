//
//  BillTotalField.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct BillTotalField: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var totalAmountStr: String
    var body: some View {
        TextField("Bill Total", text: $totalAmountStr) {
            
        }.font(.largeTitle)
            .foregroundColor(.purple)
            .keyboardType(.decimalPad)
            .padding()
            .overlay(
                       RoundedRectangle(cornerRadius: 20)
                        .stroke(Constants.acc, lineWidth: 3)
                   )
            
            .multilineTextAlignment(.center)
    }
}

struct BillTotalField_Previews: PreviewProvider {
    @State static var s: String = ""
    static var previews: some View {
        BillTotalField(totalAmountStr: $s)
    }
}
