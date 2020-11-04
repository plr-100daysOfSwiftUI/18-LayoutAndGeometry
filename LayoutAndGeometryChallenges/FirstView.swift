//
//  FirstView.swift
//  LayoutAndGeometryChallenges
//
//  Created by Paul Richardson on 4/11/20.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
		GeometryReader { geometry in
			ScrollView(.vertical) {
				VStack {
					Image("apollo11")
						.resizable()
						.scaledToFit()
						.frame(maxWidth: geometry.size.width * 0.65)
						.padding(.top)
					
					Text("Change project 8 (Moonshot) so that when you scroll down in MissionView the mission badge image gets smaller. It doesn’t need to shrink away to nothing – going down to maybe 80% is fine.")
						.padding()
					
					Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
						.padding()
				}
			}
		}
		.navigationBarTitle(Text("Apollo 11"), displayMode: .inline)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
