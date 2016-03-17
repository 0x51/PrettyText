# PrettyText

<!--[![Pod Version](https://img.shields.io/cocoapods/v/PrettyText.svg?style=flat)](http://cocoadocs.org/docsets/PrettyText/)-->
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/0x51/PrettyText/blob/master/LICENSE)
![Language](https://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)
<!--[![Build Status](https://travis-ci.org/PhamBaTho/BTNavigationDropdownMenu.svg?branch=master)](https://travis-ci.org/qxh/PrettyText)-->

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

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

## Requirements

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
