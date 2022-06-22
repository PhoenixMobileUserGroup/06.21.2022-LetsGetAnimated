//
//  TextAnimationView.swift
//  AnimationDemo
//
//  Created by michael.collins on 6/21/22.
//

import SwiftUI

struct TextAnimationView: View {
	@State private var animate: Bool = false

    var body: some View {
		VStack {
			Spacer()

			Text("Hello, World!")
				.font(.system(size: 48))
				.scaleEffect(animate ? 1 : 0.33)
				.rotationEffect(animate ? Angle.degrees(360) : .zero)
				.animation(.easeInOut, value: animate)

			Spacer()

			Button {
				animate.toggle()
			} label: {
				Text(animate ? "Reset" : "Animate")
			}
			.padding()
		}
    }
}

struct TextAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimationView()
    }
}
