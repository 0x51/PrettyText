//
//  String+PrettyText.swift
//  PrettyText
//
//  Created by qxh on 16/3/16.
//
//

import Foundation

public extension String {
    /**
     add attributes using closure
     
     - parameter range:   text range to apply the attributes
     - parameter closure: to make prettyText that provide the attributes
     
     - returns: a prettyText
     */
    public func pt_addAttributes(range: NSRange, closure: (make: PrettyTextMaker) -> Void) -> NSMutableAttributedString {
        let maker = PrettyTextMaker(string: self, range: range)
        closure(make: maker)
        return maker.prettyText
    }
    
    // MARK: PrettyTextAttributeProvider
    typealias PrettyText = NSMutableAttributedString
    
    public func pt_attribute(attributeName: String, value: AnyObject) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(attributeName, value: value, range: NSMakeRange(0, self.characters.count))
        return attributedString
    }
}

extension String: PrettyAttributeProvider {}