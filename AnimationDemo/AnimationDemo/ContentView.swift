//
//  ContentView.swift
//  AnimationDemo
//
//  Created by michael.collins on 6/21/22.
//

import SwiftUI

struct ContentView: View {
	@State private var doAnimation: Bool = false

    var body: some View {
		ZStack {
			Circle()
				.fill(doAnimation ? Color.blue : Color.green)
				.frame(width: 300)
				.animation(.easeInOut(duration: 1), value: doAnimation)

			Rectangle()
				.fill(Color.yellow)
				.frame(width: 50, height: 50)
				.rotationEffect(doAnimation ? .degrees(-675) : .zero)
				.animation(
					.easeInOut(duration: 3).delay(1.5),
					value: doAnimation
				)

			Rectangle()
				.fill(Color.black)
				.frame(width: 100, height: 100)
				.cornerRadius(doAnimation ? 50 : 0)
				.opacity(doAnimation ? 0.25: 1)
				.scaleEffect(doAnimation ? 2 : 1)
				.animation(
					.easeInOut(duration: 0.5).delay(1),
					value: doAnimation
				)

			VStack {
				Spacer()

				Button {
					doAnimation.toggle()
				} label: {
					Text(doAnimation ? "Reset": "Animate")
				}
				.padding()
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
