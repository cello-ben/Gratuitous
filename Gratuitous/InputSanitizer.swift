//
//  InputSanitizer.swift
//  Gratuitous
//
//  Created by Cello Ben on 6/13/23.
//

import Foundation

class InputSanitizer {
    static func sanitizeInput(input: String) -> Double {
        let valid: String = "0123456789.-"
        var res: String = ""
        for c in input {
            if valid.contains(c) {
                res += String(c)
            }
        }
        return Double(res) ?? 0.0
    }
}
