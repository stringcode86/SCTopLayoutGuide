Custom topLayoutGuide implementation that actualy works with custom UINavigation controller transitions.

HOW IT WORKS

Im creating SCTopLayoutGuide (UIView subclass) in IB. Setting up its top constraint to topLayoutGuide and removing it on build time. Creating height constriat, so that its height is 0, and leading and trailing to cover the width of the superview. Then making rest of the constraint in my VC to this custom layout guide. SCLayoutGuide will then create ist own constraint to superview. Navigation controller needs to be subclassed as topConstraint constant need to be updated on rotations, and navbar animations. See SCTopLayoutGuideNavigationViewController.

CONCLUTION

Yes its messy and hacky, but was only workaround I could get going on iOS7. I cant believe that apple still not fixed this bug
