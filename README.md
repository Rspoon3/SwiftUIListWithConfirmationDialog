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


**Expected Results:**
The confirmation dialog should appear right next to the swiped row.
