	//
	//  ThirdView.swift
	//  LayoutAndGeometryChallenges
	//
	//  Created by Paul Richardson on 4/11/20.
	//
	
	import SwiftUI
	
	struct ThirdView: View {
		let words = [
			"wood", "apple", "mink", "oblong", "obvious", "forget", "race", "yesterday", "leader", "onion", "many", "horse", "beaver", "twirp", "fool"
		]
		
		var body: some View {
			List(words, id: \.self) {
				Image(systemName: "\($0.count).circle")
				Text($0)
			}
			.navigationBarTitle(Text("Word Scramble"))
		}
	}
	struct ThirdView_Previews: PreviewProvider {
		static var previews: some View {
			ThirdView()
		}
	}
	
