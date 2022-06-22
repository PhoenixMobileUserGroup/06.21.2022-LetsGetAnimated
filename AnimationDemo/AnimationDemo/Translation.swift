//
//  Translation.swift
//  AnimationDemo
//
//  Created by michael.collins on 6/21/22.
//

import SwiftUI

struct Translation: View {
	@State private var showSidebar: Bool = false

    var body: some View {
		ZStack {
			NavigationView {
				Text("Hello, World!")
					.toolbar {
						ToolbarItem(placement: .navigationBarLeading) {
							Button {
								showSidebar.toggle()
							} label: {
								Image(systemName: "sidebar.left")
							}
						}
					}
			}

			GeometryReader { proxy in
				NavigationView {
					ZStack {
						Rectangle()
							.fill(Color.black)
							.edgesIgnoringSafeArea(.all)

						Text("Goodbye!")
							.foregroundColor(.white)
					}
					.toolbar {
						ToolbarItem(placement: .navigationBarLeading) {
							Button {
								showSidebar.toggle()
							} label: {
								Image(systemName: "sidebar.left")
							}
						}
					}
				}
				.frame(width: proxy.size.width / 2)
				.offset(x: showSidebar ? 0 : -(proxy.size.width / 2))
				.opacity(showSidebar ? 1 : 0)
				.animation(.easeInOut, value: showSidebar)
			}
		}
    }
}

struct Translation_Previews: PreviewProvider {
    static var previews: some View {
        Translation()
    }
}
