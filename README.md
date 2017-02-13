[![MadeInSweden](https://img.shields.io/badge/Made In-Stockholm, Sweden-blue.svg)](https://en.wikipedia.org/wiki/Stockholm)
[![Status](https://img.shields.io/badge/Status-Active doing well & alive-blue.svg)](https://github.com/MKGitHub/UIPheonix)

[![Version](https://img.shields.io/badge/Version-2.0.0-blue.svg)](https://github.com/MKGitHub/UIPheonix)
[![Carthage](https://img.shields.io/badge/carthage-2.0.0-blue.svg)](https://github.com/MKGitHub/UIPheonix)
[![SPM](https://img.shields.io/badge/SPM-2.0.0-blue.svg)](https://github.com/MKGitHub/UIPheonix)
[![Pod](https://img.shields.io/badge/pod-2.0.0-blue.svg)](https://github.com/MKGitHub/UIPheonix)

[![Platform](https://img.shields.io/badge/Platforms-macOS + iOS + tvOS-blue.svg)](https://github.com/MKGitHub/UIPheonix)
[![Swift](https://img.shields.io/badge/Swift Version-3.0.1-blue.svg)](https://github.com/MKGitHub/UIPheonix)
[![RUIC Implementation Version](https://img.shields.io/badge/RUIC Implementation Version-2.0.0-blue.svg)](https://github.com/MKGitHub/UIPheonix)


★ Give this repo a star and help its development grow! ★


![UIPheonix Logo](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/Banner.png)

Inspired by game development UIPheonix is a super easy, flexible, dynamic and highly scalable UI framework + concept for building reusable component/control-driven apps for macOS, iOS and tvOS. The same API apply for cross-platform development! Think of it as using Lego blocks, you can use similar ones and move them around easy as pie.

Does this seem familiar to you?

![ConstraintErrors](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/ConstraintErrors.png)

Well not any more…

* Forget static layouts, constraint issues and warning explosions in the console.
* Forget all the glue code, all the boilerplate code and all the very common overly engineered unnecessary pile of garbage code in your apps.
* Build and make changes to your UI quickly in a snap.
* Make your UI reusable.
* Focus on creating your app, not fighting layout issues.
* Minimal setup, minimal impact on your app, lightweight, no dependencies, no pain but so much gain!
* Builds on top of collection views & table views, so you can easily mix and match.
* Does not replace Apple technologies with custom implementations, so you will always be safe and up-to-date, and you can easily revert at any time.
* Demo apps provided for macOS, iOS and tvOS (Kung Fu!)

![OSScreenshots](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/OSScreenshots.png)

Demo App

![iOSMovie](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/iOSMovie.gif)

* Reusable UI Component/Control (from here on mentioned as a "RUIC") – Is basically just a model+view.
You can configure a RUIC in any way you want, in the demo apps I'm using both JSON files and manual code setup for the models.

![RUIC Diagram](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/RUIC.png)

* Display Models (list) – An array of [model, model, model…] etc. this is how UIPheonix knows what to display.

![States](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/States.png)

* Display State – In the demo apps I'm using a simple "state machine".
You may find alternative solutions, and your milage may vary :-)

* Model-View Relationships (dictionary) – A dictionary defining the relationship between model+view.


Example RUICs
------
Making a RUIC is pretty simple as making a model+view.

![ExampleRUIC1](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/Example1.png)
![ExampleRUIC1](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/Example2.png)


What’s New?
------
* Version 2 adds support for table view as well as many refactorings to make UIPheonix even easier to use.
* Please run & read the simple code in the demo apps.


Requirements
------
* Swift Version 3.0.1
* ARC
* macOS 10.11 and later
* iOS 9.0 and later
* tvOS 9.0 and later


How to Install
------
There is no framework/library distibution, I recommend that you add the UIPheonix/Sources|SingleFileSource to your project. As this will allow you to easily find & read the UIPheonix API, it will also allow UIPheonix to compile using your apps build settings. 
* Git: run `git clone https://github.com/MKGitHub/UIPheonix.git` then `Drag & Drop the UIPheonix/Sources|SingleFileSource into your Xcode project.`
* Manual: `Drag & Drop the UIPheonix/Sources|SingleFileSource into your Xcode project.`
* Single File Install: All the UIPheonix source files have been merged into one single file for easy install, `Drag & Drop the SingleFileSource/UIPheonix_*_*_*.swift file into your Xcode project.`
* Carthage: In your Cartfile add `github "MKGitHub/UIPheonix" ~> 2.0.0` then `carthage update --no-build` then `Drag & Drop the UIPheonix/Sources|SingleFileSource into your Xcode project.`
![Manual Install](https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/Images/ManualInstall.png)
* Swift Package Manager (still quite meaningless): run `swift build` or `swift package generate-xcodeproj`
* CocoaPods (not recommended!): `pod 'UIPheonix', '~> 2.0.0'`


Documentation
------
Go to the documentation [index page](http://htmlpreview.github.io/?https://raw.githubusercontent.com/MKGitHub/UIPheonix/master/docs/index.html).


Whats Next?
------
* Add more features.
* Try to make everything even simpler.


Used In Apps
------
UIPheonix is used in production in the following apps/games (known to me), these apps are together used by many millions of users every day. Please let me know if you use UIPheonix.

* Hoppa
* McDonald's Sweden
* McDonald's Switzerland


Contributing
------
Please contribute or create your own RUICs!

In the folder "3rd Party RUICs" you may add your own RUICs, if you already have a Cocoa Control (www.cocoacontrols.com) please consider converting it to the simple UIPheonix architecture.
A great thing about RUICs in UIPheonix is that they all have the same architecture, so you don't have to implement and follow different implementations for each Cocoa Control in your app = less fragmentation!

As UIPheonix may progress and evolve the "RUIC Implementation Version" will increase, and so in order to know which version of UIPheonix a RUIC is compatible with please add this info to your RUIC.


Notes
------
   https://github.com/MKGitHub/UIPheonix

   http://www.xybernic.com

   http://www.khanofsweden.com

   Copyright 2016/2017 Mohsan Khan

   Licensed under the Apache License, Version 2.0.

