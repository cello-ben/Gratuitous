//
//  Header.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack {
            Text(Constants.messages.randomElement() ?? "").font(.callout)
                .foregroundColor(Constants.acc)
            Divider()
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
