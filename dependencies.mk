#dependencies
#event package
bin/vialab/SMT/event/SwipeKeyListener.class: \
	bin/vialab/SMT/event/SwipeKeyEvent.class

bin/vialab/SMT/event/SwipeKeyEvent.class:

bin/vialab/SMT/event/TouchEvent.class:

bin/vialab/SMT/event/TouchListener.class: \
	bin/vialab/SMT/event/TouchEvent.class

#test package
bin/vialab/SMT/test/TestSwipeKeyboard.class: \
	bin/vialab/SMT/zone/SwipeKeyboard.class \
	bin/vialab/SMT/TouchSource.class
bin/vialab/SMT/test/TestSwipeKeyboard.class: \
	bin/vialab/SMT/Zone.class
bin/vialab/SMT/test/TestGets.class: \
	bin/vialab/SMT/Zone.class

#zone package
bin/vialab/SMT/zone/AnchorZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/zone/KeyZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/zone/SwipeKeyZone.class: \
	bin/vialab/SMT/zone/KeyZone.class

bin/vialab/SMT/zone/SwipeKeyboard.class: \
	bin/vialab/SMT/event/SwipeKeyEvent.class \
	bin/vialab/SMT/event/SwipeKeyListener.class \
	bin/vialab/SMT/Zone.class \
	bin/vialab/SMT/zone/AnchorZone.class \
	bin/vialab/SMT/zone/ArrowKeysLayout.class \
	bin/vialab/SMT/zone/CondensedLayout.class \
	bin/vialab/SMT/zone/ExtendedLayout.class \
	bin/vialab/SMT/zone/KeyZone.class \
	bin/vialab/SMT/zone/SwipeKeyboardLayout.class \
	bin/vialab/SMT/zone/SwipeKeyZone.class

bin/vialab/SMT/zone/SwipeKeyboardLayout.class:


bin/vialab/SMT/zone/ArrowKeysLayout.class: \
	bin/vialab/SMT/zone/SwipeKeyboardLayout.class

bin/vialab/SMT/zone/CondensedLayout.class: \
	bin/vialab/SMT/zone/SwipeKeyboardLayout.class

bin/vialab/SMT/zone/ExtendedLayout.class: \
	bin/vialab/SMT/zone/SwipeKeyboardLayout.class

#top level package
bin/vialab/SMT/AndroidToTUIO.class: \
	bin/vialab/SMT/Finger.class \
	bin/vialab/SMT/Simulation.class

bin/vialab/SMT/ButtonZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/CheckBoxZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/ContainerZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/Finger.class:

bin/vialab/SMT/ImageZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/KeyboardZone.class: \
	bin/vialab/SMT/ButtonZone.class \
	bin/vialab/SMT/TextZone.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/LeftPopUpMenuZone.class: \
	bin/vialab/SMT/ButtonZone.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/MouseToTUIO.class: \
	bin/vialab/SMT/Finger.class \
	bin/vialab/SMT/Simulation.class

bin/vialab/SMT/PatternUnlockZone.class: \
	bin/vialab/SMT/ImageZone.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/PGraphicsDelegate.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/PieMenuZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/ShapeZone.class: \
	bin/vialab/SMT/SMTUtilities.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/Simulation.class: \
	bin/vialab/SMT/Finger.class \
	bin/vialab/SMT/MouseToTUIO.class

bin/vialab/SMT/SlideRevealZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/SliderZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/SMT.class: \
	bin/vialab/SMT/AndroidToTUIO.class \
	bin/vialab/SMT/MouseToTUIO.class \
	bin/vialab/SMT/SMTProxyTuioListener.class \
	bin/vialab/SMT/SMTTouchManager.class \
	bin/vialab/SMT/SMTTuioListener.class \
	bin/vialab/SMT/SMTUtilities.class \
	bin/vialab/SMT/SMTZonePicker.class \
	bin/vialab/SMT/TouchDraw.class \
	bin/vialab/SMT/TouchSource.class \
	bin/vialab/SMT/TouchState.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/SMTProxyTuioListener.class:

bin/vialab/SMT/SMTTouchManager.class: \
	bin/vialab/SMT/SMTTuioListener.class \
	bin/vialab/SMT/SMTUtilities.class \
	bin/vialab/SMT/SMTZonePicker.class \
	bin/vialab/SMT/TouchState.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/SMTTuioListener.class: \
	bin/vialab/SMT/TouchState.class

bin/vialab/SMT/SMTUtilities.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/SMTZonePicker.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/TabZone.class: \
	bin/vialab/SMT/ButtonZone.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/TextureZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/TextZone.class: \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/Touch.class: \
	bin/vialab/SMT/event/TouchEvent.class \
	bin/vialab/SMT/event/TouchListener.class \
	bin/vialab/SMT/Zone.class

bin/vialab/SMT/TouchClient.class:

bin/vialab/SMT/TouchDraw.class:

bin/vialab/SMT/TouchPair.class:

bin/vialab/SMT/TouchSource.class:

bin/vialab/SMT/TouchState.class:

bin/vialab/SMT/Zone.class: \
	bin/vialab/SMT/ImageZone.class \
	bin/vialab/SMT/PGraphicsDelegate.class \
	bin/vialab/SMT/SMTUtilities.class \
	bin/vialab/SMT/TouchPair.class
