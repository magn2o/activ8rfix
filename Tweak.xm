// Fix for Activator on iOS8.0+ until Ryan can get to it.
@interface SpringBoard
- (void)applicationOpenURL:(id)arg1;
@end

%hook SpringBoard
%new - (void)applicationOpenURL:(id)arg1 publicURLsOnly:(_Bool)arg2
{
        [self applicationOpenURL:arg1];
}
%end
