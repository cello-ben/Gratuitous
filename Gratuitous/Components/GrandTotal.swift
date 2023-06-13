//
//  GrandTotal.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct GrandTotal: View {
    @Binding var tippedAmountStr: String
    var body: some View {
        Text(tippedAmountStr)
            .font(.largeTitle)
            .foregroundColor(Constants.acc)
            .frame(height: UIScreen.main.bounds.size.height * 0.3)
    }
}

struct GrandTotal_Previews: PreviewProvider {
    @State static var tippedAmt: String = "$174.32"
    static var previews: some View {
        GrandTotal(tippedAmountStr: $tippedAmt)
    }
}
