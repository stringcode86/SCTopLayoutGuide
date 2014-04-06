Custiom topLayoutGuide implementation that acctualy works view custom UINavigation controller transitions.

HOW IT WORKS

Im creating SCTopLayoutGuide (UIView subclass) in IB. Setting up its top constraint to topLayoutGuide and removing it on build time. Creating height constriat, so that its height is 0, and Leadin and Trailing to conver the width of the superview. Then making rest of the constraint in my VC to this custom layout guide. SCLayoutGuide will then creat ist own constraint to superview. Navigation controller needs to be subclassed of topConstraint constant need to be updated on rotations, and navbar animations. See SCTopLayoutGuideNavigationViewController.

CONCLUTION

Yes its messy and hacky, but was only work around I could get going on iOS7. I cant believe that apple still not fixed this bug
