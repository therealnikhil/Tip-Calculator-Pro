 # Pre-work - Tip Calculator
 
 Tip Calculator is an application for iOS where users can pre-set tip percentages and be told how much to pay according to the quality of service.
  
  Submitted by: Nikhil Nand Kumar
  
 -Time spent: 6 hours spent in total
 +Time spent: 4 days spent in total
  
  I initially spent a lot of time trying to figure out how to use UIPickerView dynamically so that the total and tip change when the satisfaction level changes in the UIPickerView, while the bill amount remains the same. Following various tutorials didn't help me, rather made me more confused. So, on the last day I decided to abandon the idea and went with the original tutorial walkthrough, somewhat. I also took some time thinking of a good app icon and creating it on Photoshop according to the standards that Apple requires for their app icons. This app is purely for submission purposes; I plan on improving and perfecting this before Spring Semester begins, in order to get a complete understanding of Swift, which I am currently not very experienced at.
 +[UPDATE] After a lot of research, I have finally understood very thoroughly the basics of Swift development and mastered using auto layout and adding constraints etc.
  
  The following **required** functionality is complete:
  * [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
  
  The following **optional** features are implemented:
 -* [ ] Settings page to change the default tip percentage.
 +* [X] Settings page to change the default tip percentage.
  * [ ] UI animations
  * [ ] Remembering the bill amount across app restarts (if <10mins)
  * [ ] Using locale-specific currency and currency thousands separators.
 @@ -21,13 +22,13 @@ The following **optional** features are implemented:
  The following **additional** features are implemented:
  
  - [X] Creating a simple app icon on Adobe Photoshop to display on iPhone homescreen
 -- [X] Using size classes and auto layout so that it can be viewed on a large variety of devices
 +- [X] Using size classes and auto layout so that it can be viewed on all iPhones and iPads
  
  ## Video Walkthrough 
  
  Here's a walkthrough of implemented user stories:
  
 -<img src='http://i.imgur.com/Vj2Zb4Z.gif?1' title='Video Walkthrough' width='auto' alt='Video Walkthrough' />
 +<img src='http://i.imgur.com/wSzqMe9.gif?1' title='Video Walkthrough' width='auto' alt='Video Walkthrough' />
  
  GIF created with [LiceCap](http://www.cockos.com/licecap/).
  
