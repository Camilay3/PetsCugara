//
//  FocusView.swift
//
//  Created by Mateus on 01/12/22.
//

import SwiftUI

struct FocusView: View {
    
    let frame: CGRect?
    
    var body: some View {
        ZStack {
            Rectangle()
                .opacity(0.5)
            if let focusedFrame = frame {
                Rectangle()
                    .frame(
                        width: focusedFrame.width,
                        height: focusedFrame.height
                    )
                    .blendMode(.destinationOut)
                    .offset(
                        x: focusedFrame.origin.x,
                        y: focusedFrame.origin.y
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            }
        }
        .compositingGroup()
        .allowsHitTesting(false)
        .ignoresSafeArea()
    }
}

struct FramePreferenceKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {}
}

extension View {
    func saveFrame(in frames: Binding<[String: CGRect]>, name: String) -> some View {
        background {
            GeometryReader { geometryProxy in
                Color.clear
                    .preference(key: FramePreferenceKey.self, value: geometryProxy.frame(in: .global))
            }
        }
        .onPreferenceChange(FramePreferenceKey.self) { frame in
            frames.wrappedValue[name] = frame
        }
    }
}
