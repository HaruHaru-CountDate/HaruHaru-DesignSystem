//
//  SwiftUIView 2.swift
//  HaruKit
//
//  Created by dgsw30 on 5/12/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
public struct DayCardView: View {
    let image: Iconography
    let day: String
    let title: String
    public var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(icon: image)
                .resizable()
                .aspectRatio(2.5, contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 124)
                .clipShape(size: 22)
            
            VStack(alignment: .leading) {
                Text(day)
                Text(title)
            }
            .foregroundStyle(.white)
            .font(.bold(size: 25))
            .padding()
        }
        .padding(.horizontal, 10)
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    DayCardView(image: .bg_06_kiss, day: "1월 14일", title: "다이어리 데이")
}
