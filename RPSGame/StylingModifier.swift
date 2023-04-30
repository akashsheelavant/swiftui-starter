//
//  StylingModifier.swift
//  RPSGame
//
//  Created by Akash Sheelavant on 07/04/23.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.weight(.semibold))
            .foregroundColor(.blue)
    }
}

struct SubTitle: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title3.weight(.medium))
            .foregroundColor(.black)
    }
}

extension View {
    func largeTitleStyle() -> some View {
        modifier(Title())
    }
    
    func subTitleStyle() -> some View {
        modifier(SubTitle())
    }
}

