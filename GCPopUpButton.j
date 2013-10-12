@import <AppKit/CPPopUpButton.j>

@implementation GCPopUpButton : CPPopUpButton
{
}
- (void)setObjectValue:(int)anIndex
{
    var indexOfSelectedItem = [self objectValue];

    anIndex = parseInt(+anIndex, 10);

    if (indexOfSelectedItem === anIndex)
        return;

    if (indexOfSelectedItem >= 0)
        [[self selectedItem] setState:CPOffState];

    _selectedIndex = anIndex;

    if (indexOfSelectedItem >= 0)
        [[self selectedItem] setState:CPOnState];

    [self synchronizeTitleAndSelectedItem];
}
@end
