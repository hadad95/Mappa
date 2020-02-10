@interface SBFolderIconListView
+ (NSUInteger)maxVisibleIconRowsInterfaceOrientation:(NSUInteger)arg1;
+ (NSUInteger)iconColumnsForInterfaceOrientation:(NSUInteger)arg1;
@end

@interface SBFloatyFolderView
- (CGRect)_frameForScalingView;
- (BOOL)_tapToCloseGestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2;
@end

@interface SBFolderBackgroundView : UIView
@end

BOOL enabled;
NSUInteger cols;
NSUInteger rows;

%hook SBFolderIconListView
+ (NSUInteger)maxVisibleIconRowsInterfaceOrientation:(NSUInteger)arg1 {
	if (!enabled)
		return %orig;

	return rows;
}

+ (NSUInteger)iconColumnsForInterfaceOrientation:(NSUInteger)arg1 {
	if (!enabled)
		return %orig;

	return cols;
}
%end

%hook SBFloatyFolderView
- (CGRect)_frameForScalingView {
	if (!enabled)
		return %orig;

	CGRect frame = %orig;
	frame.origin.y -= 30;
	frame.size.height = UIScreen.mainScreen.bounds.size.height - frame.origin.y - 30;
	return frame;
}

- (BOOL)_tapToCloseGestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
	if (!enabled)
		return %orig;

	return YES;
}
%end

%hook SBFolderBackgroundView
- (void)setAlpha:(CGFloat)arg1 {
	if (!enabled) {
		%orig;
		return;
	}
	
	%orig(0.0);
}
%end

%ctor {
	NSDictionary *prefs = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.kef.mappa"];
	enabled = [[prefs valueForKey:@"enabled"] boolValue];
	cols = (NSUInteger)[[prefs valueForKey:@"columns"] intValue];
	rows = (NSUInteger)[[prefs valueForKey:@"rows"] intValue];
}