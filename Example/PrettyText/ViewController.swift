//
//  ViewController.swift
//  PrettyText
//
//  Created by qxh on 03/16/2016.
//  Copyright (c) 2016 qxh. All rights reserved.
//

import UIKit
import PrettyText

class ViewController: UIViewController {

    // MARK: - Properties
    lazy var textView: UITextView = {
        let textView = UITextView(frame: CGRectMake(10, 100, self.view.bounds.size.width - 20, 300))
        return textView
    }()
    
    lazy var prettyText: NSMutableAttributedString = {
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
        
        print(prettyText)
        return prettyText
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(self.textView)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.textView.attributedText = self.prettyText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

