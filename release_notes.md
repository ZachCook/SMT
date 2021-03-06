
SMT v3.7.1 Release Notes
=====================

#### API Additions:
- The Work-in-progress SwipeKeyboard and related work

#### API Changes:
- Nothing of major significance ( i think )

#### Bug Fixes:
- Added a lot of missing documentation

#### Other:
- Created more examples, including a tutorial, and a table hockey game
- Compilation with make is now supported.
- Repository has been cleaned up
- Creation of everything has been made automated through make ( release zip file, javadoc, etc )


SMT v3.7 Release Notes
=====================

#### API Additions:
- Added SMT.debug to toggle debug messages
- Added ImageZone constructor that takes a URL
- Allow partial matching for methods to allow numerical suffixes
- Added default draw/touch methods, so that new Zones don't start as invisible and non- interactive

#### API Changes:
- TouchClient renamed to SMT, although TouchClient still exists as an alias

#### Bug Fixes:
- OS X no longer has intermittent flashing on the screen, and by default uses the faster picking mode
- Windows executables no longer try to run on non- windows systems
- Greatly reduced memory usage (x15)
- Greatly reduced start up time per Zone (20ms per Zone)
- Fixed drag(), hSwipe(), etc when zone is rotated, and to use the original offset instead of relative movement


SMT v3.6.1 Release Notes
=====================

#### API Additions:
- Added getLocalX and getLocalY in Touch and Zone, taking the other as a param.
- TouchClient.sketch refers to the sketches original PGraphics, for setting the background of the sketch, etc

#### Bug Fixes:
- Zone.background() now only sets the background for the area of the Zone


SMT v3.6 Release Notes
=====================

#### Bug Fixes:
- Made WM_TOUCH back- end compatible with Windows 8


SMT v3.5 Release Notes
=====================

#### Bug Fixes:
- Made compatible with Processing 2.0
- Fast picking bug is fixed with Processing 2.0, and we now default to fast picking again. 


SMT v3.4 Release Notes
=====================

#### API Additions:
- the touchUp()/touchDown()/touchMoved() functions in the sketch can now have a Touch parameter
- TouchSource.LEAP added, which supports the Leap Motion
- TouchSource.MULTIPLE added, which runs multiple TouchSources at once
- Zone.setBoundObject(Object) and Zone.getBoundObject() were added to get and set the object referred to by the 'this' keyword, when in a method that isused by a Zone and defined outside of the PApplet (When classes are passed to TouchClient.init() or using TouchClient.addMethodClasses()).

#### API Changes:
- TouchClient's setDrawTouchPoints() deprecated/renamed to setTouchDraw()
- SMTUtilities' checkImpl() and getZoneMethod() have an additional first parameter which is the callingClass to by definition return false that an implementation exists for
- Zone.touchDown(Touch) and Zone.touchUp(Touch) have been removed, as they only mistakenly did anything more then just call assign(Touch)/unassign(Touch), either use assign/unassign directly or touchDownImpl/touchUpImpl in subclasses
- TouchClient.init() now accepts classes instead of objects.
- TouchClient.addMethodObjects(Object... objects) was replaced with TouchClient.addMethodClasses(Class<?>... classes), so now accepts classes.

SMT v3.3 Release Notes
=====================

#### API Additions:
- Zone.dragWitinParent() will drag a zone, but keep it inside its parent zone
- TouchClient.init() now accepts any number of objects to check for methods in addition to the PApplet
- getZone(String[,Class<T extends Zone>]) this takes a string and returns a Zone, optionally a class such as Zone.class can be given as a second parameter, in which case an attempt to cast it to this class will be made. This should allow the use of less globally defined Zones
- many built- in Zones have more protected variables and protected methods to make it easier to re- implement their draw method
- KeyboardZone now has an alpha that can be set in constructors

#### Bug Fixes:
- KeyboardZone's keys now resize properly with the KeyboardZone when setSize(int,int) is called, fontSize changes also

#### Feature Changes:
- KeyboardZone now has a 10% size border to make it easier to move (5% zone size on each side)
- KeyboardZone's letters now switch between lower and upper case depending on if shift is pressed

- Added many examples, in a clear hierarchy similar to Processing's

SMT v3.2 Release Notes
=====================

#### API Changes:
- Zone.getTouches() and TouchClient.getTouchesFromZone(Zone) return an array now instead of a collection, the old forms are now called Zone.getTouchCollection() and TouchClient.getTouchCollectionFromZone(Zone)
- TextZone constructor has a selectable boolean, to specify whether highlighting is done, in addition to blur
- Touch.getLastPoint() now returns a Point instead of a TuioPoint
- TouchClient.getTouches() now returns an array, the old form is available using TouchClient.getTouchCollection()
- Zone.activeTouches now private instead of public
- Touch no longer has getScreenX() and getScreenY(), they do not work(aren't updated properly), and Touch.x and Touch.y already give screen relative co- ordinates
- TouchClient no longer has constructors, use TouchClient.init() instead
- TouchClient.setDrawTouchPoints() now takes an enum TouchDraw instead of a boolean, options are NONE, DEBUG, and SMOOTH
- some TextZone constructors have some added parameters to allow using all combinations of functionality

#### API Additions:
- applet and client variables in Zone now protected
- parent variable in Zone now protected
- Touch.getCurrentPoint(), similar to getLastPoint except gets the current point
- TextZone now has an additional constructor that specifies fontSize, blur, selectable, and name
- Zone now has getGlobalMatrix() which returns a PMatrix3D of the Zone's matrix relative to global coordinates
- KeyboardZone now has the following additional methods: clearKeyListeners(), getZoneKeyListeners(), getKeyListeners()
- Touch now has getAssignedZones(), assignZone(), unassignZone(), and getPathPoints()
- Zone now has toss(), which uses a physics engine to simulate tossing the Zone
- TouchClient.createStaticBox() will create a box that interacts with the physics engine, and by default these already exist at the edges of the screen
- New Zone: ContainerZone - Has no draw and not selectable by default and gives no warnings about it, useful for ordering and holding other Zones
- Zone.vSwipe() now has optional limits to match hSwipe()
- ImageZone now has tintColour to allow setting of transparency and tint of the image
- new method Zone.getOrigin()
- Some new zones added: LeftPopUPMenuZone, PatternUnlockZone, SlideRevealZone, CheckBoxZone

#### Feature Changes:
- TextZone now selects(highlights)/unblurs when moving across the text to the right, and unselects(unhighlights)/blurs when moving across the text to the left 
- TextZone now renders its text immediately
- TextZone now cuts off text past its width, instead of going to a newline every character
- Touches no longer have a touchDown whenever they start picking to a new Zone, instead a normal touchMoved will be called, to maintain the same functionality if needed simply do the needed action on the first touchMoved since the last touchUp 
- Zone.getCentre(), Zone.getX(), and Zone.getY() now return global coordinates

#### Bug Fixes:
- push/pop style for every zone draw properly (no longer inherit style from parent zones)
- push/pop style in touch methods properly
- Try to do proper shutdown in TouchClient
- set Zone.parent to null in TouchClient.add() to make sure we draw the Zone at the top level unless it gets a new parent set
- TextZone.clone()/TextZone copy constructor fixed to copy all TextZone state
- assign(Touch) and unassign(Touch) now work properly
- No longer warn that touchMethod is missing if touchDownImpl/touchUpImpl/touchMovedImpl exists, and also don't auto- unassignall() if these methods are used
- Zone.add() and TouchClient.add() now updates the Zone's matrix to make sure the first draw is done with the correct matrix (prevents an incorrect frame from being rendered)
- add()/remove() of null Zone will no longer halt the execution of the sketch, and instead just prints an error
- checkImpl() now properly checks superclasses, so inheritance of drawImpl() and touchImpl(), etc works now.
- checkImpl() now properly works with additional parameters
- Touches no longer get stuck at the edge of the window when it is smaller than screen size
- JointCursors now are indicated with a green inside of the touch draw (JointCursors are MouseToTUIO specific and are activated my holding CTRL when clicking), they have always worked but were never indicated before