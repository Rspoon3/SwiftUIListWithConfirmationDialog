# SwiftUIListWithConfirmationDialog
Demonstrates how a confirmation dialog does not work with items in a list on iPad.

**System Info:**
* Xcode 13.1 (13A1030d)
* iPad Pro 11 (2018, iOS 15.1)


**Reproduction steps:**
1. Run app on iPad in landscape
2. Swipe to delete to show the confirmation dialog


**Actual Results:**
The confirmation dialog randomly appears on any item.


https://user-images.githubusercontent.com/42879920/141803609-a72696f0-1e2d-4e9f-ae21-f12155b6a960.MP4



**Expected Results:**
The confirmation dialog should appear right next to the swiped row.
