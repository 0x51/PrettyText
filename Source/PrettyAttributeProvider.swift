//
//  PrettyAttributeProvider.swift
//  PrettyText
//
//  Created by qxh on 16/3/16.
//
//

import Foundation

#if os(iOS)
    public typealias PTColor = UIColor
    public typealias PTFont = UIFont
#elseif os(OSX)
    public typealias PTColor = NSColor
    public typealias PTFont = NSFont
#endif

/**
 *  @brief A protocol provider text attributes of NSAttributedString
 */
public protocol PrettyAttributeProvider {
    typealias PrettyText // Associated Type
    
    /**
    attribute generator
    
    - parameter attributeName: attributeName of NSAttributedString
    - parameter value: attributeValue of NSAttributedString
    
    - returns: PrettyText
    */
    func pt_attribute(attributeName: String, value: AnyObject) -> PrettyText
}

public extension PrettyAttributeProvider {
    
    public func pt_font(font: UIFont) -> PrettyText {
        return self.pt_attribute(NSFontAttributeName, value: font)
    }
    
    public func pt_paragraphStyle(style: NSParagraphStyle) -> PrettyText {
        return self.pt_attribute(NSParagraphStyleAttributeName, value: style)
    }
    
    public func pt_color(color: PTColor) -> PrettyText {
        return self.pt_attribute(NSForegroundColorAttributeName, value: color)
    }
    
    public func pt_backgroundColor(color: PTColor) -> PrettyText {
        return self.pt_attribute(NSBackgroundColorAttributeName, value: color)
    }
    
    public func pt_ligature(ligature: Bool) -> PrettyText {
        return self.pt_attribute(NSLigatureAttributeName, value: ligature)
    }
    
    public func pt_kern(space: Int) -> PrettyText {
        return self.pt_attribute(NSKernAttributeName, value: space)
    }
    
    public func pt_strikethroughStyle(style: NSUnderlineStyle) -> PrettyText {
        return self.pt_attribute(NSStrikethroughStyleAttributeName, value: style.rawValue)
    }
    
    public func pt_strikethroughColor(color: PTColor) -> PrettyText {
        return self.pt_attribute(NSStrikethroughColorAttributeName, value: color)
    }
    
    public func pt_underlineStyle(style: NSUnderlineStyle) -> PrettyText {
        return self.pt_attribute(NSUnderlineStyleAttributeName, value: style.rawValue)
    }
    
    public func pt_underlineColor(color: PTColor) -> PrettyText {
        return self.pt_attribute(NSUnderlineColorAttributeName, value: color)
    }
    
    public func pt_strokeColor(color: PTColor) -> PrettyText {
        return self.pt_attribute(NSStrokeColorAttributeName, value: color)
    }
    
    public func pt_strokeWidth(width: Float) -> PrettyText {
        return self.pt_attribute(NSStrokeWidthAttributeName, value: width)
    }
    
    public func pt_shadow(shadow: NSShadow) -> PrettyText {
        return self.pt_attribute(NSStrokeWidthAttributeName, value: shadow)
    }
    
    public func pt_verticalGlyphForm(form: Int) -> PrettyText {
        return self.pt_attribute(NSVerticalGlyphFormAttributeName, value: form)
    }
}