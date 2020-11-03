# LayoutAndGeometry

[Hacking with Swift: 100 Days of SwiftUI - Project 18][1]

### Challenges

1. Change project 8 (Moonshot) so that when you scroll down in MissionView the mission badge image gets smaller. It doesn’t need to shrink away to nothing – going down to maybe 80% is fine.
2. Change project 5 (Word Scramble) so that words towards the bottom of the list slide in from the right as you scroll. Ideally at least the top 8-10 words should all be positioned normally, but after that they should be offset increasingly to the right.
3. mFor a real challenge make the letter count images in project 5 change color as you scroll. For the best effect, you should create colors using the Color(red:green:blue:) initializer, feeding in values for whichever of red, green, and blue you want to modify. The values to input can be figured out using the row’s current position divided by maximum position, which should give you values in the range 0 to 1.


Tip: All three of these require you to use GeometryReader, which in turn requires you to understand how the frame of each view is calculated. These are quite hard, so don’t feel bad if you end up doing them out of order or have to ask for help!

[1]: https://www.hackingwithswift.com/100/swiftui/94


