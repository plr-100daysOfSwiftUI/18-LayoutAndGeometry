	//
	//  ThirdView.swift
	//  LayoutAndGeometryChallenges
	//
	//  Created by Paul Richardson on 4/11/20.
	//
	
	import SwiftUI
	
	struct ThirdView: View {
		let words = [
			"wood", "apple", "mink", "oblong", "obvious", "forget", "race", "yesterday", "leader", "onion", "many", "horse", "beaver", "twirp", "fool", "heavy", "light", "dark", "shadow", "merry", "funeral", "pyre", "expeditionary"
		]
		
		var body: some View {
			List {
				ForEach(0..<words.count) { i in
					HStack {
						Image(systemName: "\(words[i].count).circle")
						Text(words[i])
					}
				}
			}
			.navigationBarTitle(Text("Word Scramble"))
		}
	}
	struct ThirdView_Previews: PreviewProvider {
		static var previews: some View {
			ThirdView()
		}
	}
	
