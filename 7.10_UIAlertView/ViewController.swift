//
//  ViewController.swift
//  7.10_UIAlertView
//
//  Created by 王卓 on 15/4/16.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var alertView1=UIAlertView()
        alertView1.title="Title"
        alertView1.tintColor=UIColor.redColor()
        alertView1.message="message"
        alertView1.addButtonWithTitle("Button1")
        alertView1.addButtonWithTitle("Button2")
        alertView1.cancelButtonIndex=0
        alertView1.delegate=self
        alertView1.show()
    }
    
    func alertView(alertView:UIAlertView,clickedButtonAtIndex buttonIndex:Int){
        if (buttonIndex==alertView.cancelButtonIndex){ println("cancel")}
        else{ println("OK")}
        
        
        
        var actoinSheet=UIActionSheet()
        actoinSheet.addButtonWithTitle("Cancel")
        actoinSheet.addButtonWithTitle("1")
        actoinSheet.addButtonWithTitle("2")
        actoinSheet.cancelButtonIndex=0
        actoinSheet.delegate=self
        actoinSheet.showInView(self.view)
    }

    func actionSheet(actionSheet1:UIActionSheet!,clickedButtonAtIndex buttonIndex:Int)
    {
        println("clicked"+(actionSheet1.buttonTitleAtIndex(buttonIndex)))
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

