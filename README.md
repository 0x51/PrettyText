# PrettyText

<!--[![Pod Version](https://img.shields.io/cocoapods/v/PrettyText.svg?style=flat)](http://cocoadocs.org/docsets/PrettyText/)-->
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/0x51/PrettyText/blob/master/LICENSE)
![Language](https://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)
<!--[![Build Status](https://travis-ci.org/PhamBaTho/BTNavigationDropdownMenu.svg?branch=master)](https://travis-ci.org/qxh/PrettyText)-->

PrettyText is a light-weight framework which wraps NSAttributedString with a nicer syntax. PrettyText has its own DSL which provides a chainable way of describing your NSAttributedString which results in code that is more concise and readable.
PrettyText supports iOS and Mac OS X

========

## What's wrong with NSLayoutConstraints?
It's not a secret that NSAttributedString API is far from perfect. Based on NSDictionary, it looks ugly, counter-OOP and hard to maintain...

```swift
var attributedString = NSMutableAttributedString(string: "This is PrettyText\n优美的文字")
attributedString.addAttributes([NSForegroundColorAttributeName: [UIColor greenColor]
                                  , NSFontAttributeName: fnt2.fontWithSize(20)
                                  , NSBackgroundColorAttributeName: @2],
                          range:NSMakeRange(0, attributedString.string.charactors.count))
attributedString.addAttributes([NSForegroundColorAttributeName: UIColor.blueColor()
                                  , NSFontAttributeName: fnt2.fontWithSize(30)
                          range:NSMakeRange(14, 5))
attributedString.addAttributes:([NSStrikethroughStyleAttributeName: NSUnderlineStyleSingle.rawValue
                                  , NSStrikethroughColorAttributeName: UIColor.redColor()
                                  , NSBackgroundColorAttributeName: UIColor.yellowColor()]
                          range:NSMakeRange(19, 5))
_attributedTextView2.attributedText = attributedString
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

* Method Chaining
* [SnapKit](https://github.com/SnapKit/SnapKit) like DSL

```swift
let prettyText = "This is PrettyText\n优美的文字".pt_font(UIFont.systemFontOfSize(20))
            .pt_color(UIColor.greenColor())
            .pt_backgroundColor(UIColor.blackColor())
            .pt_addAttributes(NSMakeRange(8, 6)) { make in
                make.pt_font(UIFont.systemFontOfSize(30))
                    .pt_color(UIColor.redColor())
                    .pt_backgroundColor(UIColor.blueColor())
            }
            .pt_addAttributes(NSMakeRange(14, 4)) { make in
                make.pt_font(UIFont.systemFontOfSize(30))
                    .pt_color(UIColor.orangeColor())
                    .pt_backgroundColor(UIColor.blueColor())
            }
            .pt_addAttributes(NSMakeRange(19, 5)) { make in
                make.pt_font(UIFont.systemFontOfSize(50))
                    .pt_color(UIColor.whiteColor())
                    .pt_backgroundColor(UIColor.whiteColor())
                    .pt_strokeColor(UIColor.blackColor())
                    .pt_strokeWidth(1)
            }
```

## Installation

PrettyText is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PrettyText", :git => "https://github.com/0x51/PrettyText.git"
```

## Author

qxh, qxh@mail.com

## License

PrettyText is available under the MIT license. See the LICENSE file for more info.
