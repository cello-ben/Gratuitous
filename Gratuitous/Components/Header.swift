//
//  Header.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Text("Be nice to your server!").font(.largeTitle)
            .foregroundColor(Constants.acc)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
