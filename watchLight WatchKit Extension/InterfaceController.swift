//
//  InterfaceController.swift
//  watchLight WatchKit Extension
//
//  Created by Brown Magic on 7/28/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation

var isFlashLightOn = false


class InterfaceController: WKInterfaceController {
  
  @IBOutlet weak var lightButton: WKInterfaceButton!
  @IBOutlet weak var interfaceGroup: WKInterfaceGroup!
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
    interfaceGroup.setCornerRadius(0.0)
    
    // start with light on
    self.onLightTap()
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  @IBAction func onLightTap() {
    if (!isFlashLightOn){
      interfaceGroup.setBackgroundColor(UIColor.whiteColor())
      println("on")
      isFlashLightOn = true
//      interfaceGroup.setAlpha(0.5)
    } else {
      interfaceGroup.setBackgroundColor(UIColor.clearColor())
      println("off")
      isFlashLightOn = false
    }
  }
}
