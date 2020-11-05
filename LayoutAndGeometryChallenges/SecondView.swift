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
			ForEach(words.indices) { i in
				GeometryReader { geo in
					let scale = Double(i) * 0.01
					let xOffset =  i < 5
						? 10.0
						: 10.0 + geo.frame(in: .global).minY * CGFloat(scale)
					Text("\(words[i])")
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
