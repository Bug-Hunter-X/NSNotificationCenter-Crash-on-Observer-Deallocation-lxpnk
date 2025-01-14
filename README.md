# NSNotificationCenter Crash on Observer Deallocation

This repository demonstrates a common bug in Objective-C applications involving `NSNotificationCenter`.  The bug occurs when an object is deallocated before its observer is removed from the notification center, leading to a crash.

## Bug Description
The `NSNotificationBug.m` file contains code that registers an observer for a notification. However, this observer is not removed before the object is deallocated, causing a crash when the notification is posted.

## Solution
The `NSNotificationSolution.m` file shows how to properly remove the observer using `removeObserver:`.  This ensures that the notification center does not attempt to send messages to a deallocated object.