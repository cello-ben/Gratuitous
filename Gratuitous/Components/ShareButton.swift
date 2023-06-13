//
//  ShareButton.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import SwiftUI

struct ShareButton: View {
    @Binding var tip: String
    var body: some View {
        
        Button() {
            if !tip.isEmpty {
                let activityViewController = UIActivityViewController(
                    activityItems: ["Total amount: \(tip)"],
                    applicationActivities: nil
                )

                let scene = UIApplication.shared.connectedScenes.first
                if let windowScene = scene as? UIWindowScene {
                    let window = windowScene.windows.first
                    window?.rootViewController?.present(activityViewController, animated: true)
                }
            }
        } label: {
            Image(systemName: "square.and.arrow.up").opacity(tip.isEmpty ? 0.0 : 1.0)
        }
       
    }
    
}

struct ShareButton_Previews: PreviewProvider {
    @State static var previewTip: String = "$127.30"
    static var previews: some View {
        ShareButton(tip: $previewTip)
    }
}
