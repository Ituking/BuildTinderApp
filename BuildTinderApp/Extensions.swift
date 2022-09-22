//
//  Extensions.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//
import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
