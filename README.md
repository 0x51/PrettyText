# PrettyText

<!--[![Pod Version](https://img.shields.io/cocoapods/v/PrettyText.svg?style=flat)](http://cocoadocs.org/docsets/PrettyText/)-->
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/0x51/PrettyText/blob/master/LICENSE)
![Language](https://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)
<!--[![Build Status](https://travis-ci.org/PhamBaTho/BTNavigationDropdownMenu.svg?branch=master)](https://travis-ci.org/qxh/PrettyText)-->

PrettyText is a light-weight framework which wraps NSAttributedString with a nicer syntax. PrettyText has its own DSL which provides a chainable way of describing your NSAttributedString which results in code that is more concise and readable.
PrettyText supports iOS and OS X.

========

## What's wrong with NSAttributedString?
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

If you don't specify range, full range of string will be used.

Which attributes BOString supports? It supports a lot of them:

```
pt_font;
pt_paragraphStyle;
pt_color;
pt_backgroundColor;
pt_ligature;
pt_kern;
pt_strikethroughStyle;
pt_underlineStyle;
pt_strokeColor;
pt_strokeWidth;
pt_shadow;
pt_textEffect;           // iOS only
pt_attachment;
pt_link;
pt_baselineOffset;
pt_underlineColor;
pt_strikethroughColor;
pt_obliqueness;
pt_expansion;
pt_writingDirection;
pt_verticalGlyphForm;
```

## Installation

PrettyText is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PrettyText", :git => "https://github.com/holyq/PrettyText.git"
```

## Author

qxh, qxh@mail.com

## License

PrettyText is available under the MIT license. See the LICENSE file for more info.
