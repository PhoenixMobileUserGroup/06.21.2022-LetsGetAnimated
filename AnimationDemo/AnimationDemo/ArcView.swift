//
//  ArcView.swift
//  AnimationDemo
//
//  Created by michael.collins on 6/21/22.
//

import SwiftUI

struct ArcView: View {
	@State private var animate: Bool = false

    var body: some View {
		ZStack {
			Circle()
				.stroke(style: .init(lineWidth: 10))
				.padding()

			Circle()
				.trim(from: 0, to: animate ? 1 : 0)
				.stroke(
					Color.red,
					style: .init(lineWidth: 10, lineCap: .round)
				)
				.padding()
				.animation(.linear(duration: 3), value: animate)

			VStack {
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
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ArcView()
    }
}
