In the dealloc method of the class that registers for the notification, remove the observer before releasing any resources. This prevents sending messages to a deallocated object.

```objectivec
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}
```

Alternatively, you could use a block-based observer, which automatically handles cleanup, making this issue less likely:
```objectivec
[[NSNotificationCenter defaultCenter] addObserverForName:NotificationName object:nil queue:nil usingBlock:^(NSNotification *note) { 
    // Handle notification 
}]; 
```