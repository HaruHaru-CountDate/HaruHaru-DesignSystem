//
//  SwiftUIView.swift
//  HaruKit
//
//  Created by dgsw30 on 5/12/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
public struct DefaultButton: View {
    let title: String
    let action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.medium(size: 20))
                .foregroundStyle(AppColor.text)
                .frame(maxWidth: .infinity)
                .frame(height: 65)
                .background(AppColor.main)
                .clipShape(size: 15)
        }
        .padding(.horizontal, 10)
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    DefaultButton(title: "zz") {
        print("hello")
    }
}
