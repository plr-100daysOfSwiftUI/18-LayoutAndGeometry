//
//  ContentView.swift
//  LayoutAndGeometryChallenges
//
//  Created by Paul Richardson on 3/11/20.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			VStack {
				NavigationLink("Challenge 1", destination: FirstView())
					.padding()
					.font(.title)
				NavigationLink("Challenge 2", destination: SecondView())
					.padding()
					.font(.title)
				NavigationLink("Challenge 3", destination: ThirdView())
					.padding()
					.font(.title)
			}
			.navigationBarTitle(Text("Layout and Geometry"))
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
