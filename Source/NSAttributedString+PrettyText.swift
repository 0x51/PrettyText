//
//  NSAttributedString+PrettyText.swift
//  PrettyText
//
//  Created by qxh on 16/3/16.
//
//

import Foundation

public extension NSAttributedString {
    /**
     add attributes using closure
     
     - parameter range:   text range to apply the attributes
     - parameter closure: to make prettyText that provide the attributes
     
     - returns: a prettyText
     */
    public func pt_addAttributes(range: NSRange, closure: (make: PrettyTextMaker) -> Void) -> NSMutableAttributedString {
        let maker = PrettyTextMaker(attributedString: self, range: range)
        closure(make: maker)
        let prettyText = maker.prettyText
        return prettyText
    }
    
    // MARK: PrettyTextAttributeProvider
    typealias PrettyText = NSMutableAttributedString
    
    public func pt_attribute(attributeName: String, value: AnyObject) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(attributedString: self)
        attributedString.addAttribute(attributeName, value: value, range: NSMakeRange(0, self.string.characters.count))
        return attributedString
    }
}

extension NSAttributedString: PrettyAttributeProvider {}

public extension NSMutableAttributedString {
    // MARK: PrettyTextAttributeProvider
    public override func pt_attribute(attributeName: String, value: AnyObject) -> NSMutableAttributedString {
        self.addAttribute(attributeName, value: value, range: NSMakeRange(0, self.string.characters.count))
        return self
    }
}