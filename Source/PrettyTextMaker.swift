//
//  PrettyTextMaker.swift
//  PrettyText
//
//  Created by qxh on 16/3/16.
//
//

import Foundation

/**
 Used to make PrettyText
 */
public class PrettyTextMaker {
    internal init(string: String, range:NSRange) {
        self.range = range
        
        let attributedString = NSMutableAttributedString(string: string)
        self.attributedString = attributedString
    }
    
    internal init(attributedString: NSAttributedString, range:NSRange) {
        self.range = range
        
        self.attributedString = NSMutableAttributedString(attributedString: attributedString)
    }
    
    /// stored attributedString
    public var attributedString: NSMutableAttributedString
    
    /// computed attributedString producted by this maker
    public var prettyText: NSMutableAttributedString {
        get {
            self.attributedString.addAttributes(self.attibutes, range: self.range)
            return self.attributedString
        }
    }
    
    /// attributes need to apply on the attributedString
    public var attibutes: [String: AnyObject] = [:]
    
    /// text range to apply this attributes
    public var range: NSRange
    
    // MARK: PrettyTextAttributeProvider
    public typealias PrettyText = PrettyTextMaker
    
    public func pt_attribute(attributeName: String, value: AnyObject) -> PrettyTextMaker {
        self.attibutes[attributeName] = value
        return self
    }
}

extension PrettyTextMaker: PrettyAttributeProvider {}

