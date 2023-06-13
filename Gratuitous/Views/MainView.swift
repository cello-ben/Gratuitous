//
//  ContentView.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/12/23.
//

import SwiftUI

struct MainView: View {
    //To differentiate between light mode and dark mode.
    @Environment(\.colorScheme) var colorScheme
    
    //Main state storage for app. Everything else handled in components.
    @State var tipPercentage: Double = 0.20
    @State var totalAmountStr: String = ""
    @State var tippedAmountStr: String = ""
    @State var currency: String = "$"
    
    var body: some View {
        
        VStack {
            Group {
                Header()
                Spacer()
            }
            Group {
                CurrencyPicker(currency: $currency)
                Spacer()
            }
            Group {
                GrandTotal(tippedAmountStr: $tippedAmountStr)
                Spacer()
            }
            Group {
                BillTotalField(totalAmountStr: $totalAmountStr)
                Spacer()
            }
            Group {
                TipPicker(tipPercentage: $tipPercentage)
                Spacer()
            }
            Group {
                CalculateButton(currency: currency, totalAmountStr: totalAmountStr, tipPercentage: tipPercentage, tippedAmountStr: $tippedAmountStr)
                Spacer()
            }
            Group {
                ShareButton(tip: $tippedAmountStr )
            }
        }
        .background(colorScheme == .dark ? .black : .white)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
