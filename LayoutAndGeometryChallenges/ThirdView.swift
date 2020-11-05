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
			GeometryReader { fullView in
				List {
					ForEach(words.indices) { i in
						GeometryReader { geo in
							// the distance from the top of the screen
							let min = fullView.frame(in: .global).minY
							// the maximum position
							let max = fullView.frame(in: .global).maxY
							// the current position less the distance to the top of the screen
							let current = geo.frame(in: .global).minY - min
							
							let red = 1.0
							let green = Double(current / max)
							let blue = 1.0 - green
							
							let color = Color(red: red, green: green, blue: blue)
							
							HStack {
								Image(systemName: "\(words[i].count).circle")
									.foregroundColor(color)
								Text(words[i])
							}
						}
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
	
