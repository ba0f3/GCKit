@import <AppKit/CPView.j>


@implementation GCView : CPView
{

}

- (void)sizeToFit
{
    var subviews = [self subviews],
        frame = CGRectMakeZero();
    for (var i = 0; i < subviews.length; i++)
    {
        var subview = subviews[i];
        if ([subview isHidden])
            continue;
        frame = CGRectUnion(frame, [subview frame]);
    }
    [self setFrameSize:CGSizeMake(CGRectGetWidth(frame), CGRectGetHeight(frame) + 20)];
}

@end
