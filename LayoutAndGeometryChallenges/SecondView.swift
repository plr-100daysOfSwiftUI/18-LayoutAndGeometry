//
//  SecondView.swift
//  LayoutAndGeometryChallenges
//
//  Created by Paul Richardson on 4/11/20.
//

import SwiftUI

struct SecondView: View {
	
	let words = [
		"wood", "apple", "mink", "oblong", "obvious", "forget", "race", "yesterday", "leader", "onion", "many", "horse", "beaver", "twirp", "fool", "heavy", "light", "dark", "shadow", "merry", "funeral", "pyre", "expeditionary"
	]
	
	var body: some View {
		List {
			ForEach(0..<words.count) { i in
				GeometryReader { geo in
					let xOffset =  i < 5
						? 10.0
						: geo.frame(in: .local).minX + geo.frame(in: .global).minY * 0.05
					Text(words[i])
						.offset(CGSize(width: xOffset, height: 10.0))
				}
			}
		}
		.navigationBarTitle(Text("Word Scramble"))
	}
}

struct SecondView_Previews: PreviewProvider {
	static var previews: some View {
		SecondView()
	}
}
