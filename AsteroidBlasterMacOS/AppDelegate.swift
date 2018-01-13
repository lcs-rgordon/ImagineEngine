//
//  AppDelegate.swift
//  AsteroidBlasterMacOS
//
//  Created by Russell Gordon on 1/13/18.
//  Copyright © 2018 ImagineEngine. All rights reserved.
//
import Cocoa
import ImagineEngine

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var window: GameWindowController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let sceneSize = Size(width: 375, height: 667)
        let gameScene = AsteroidBlasterScene(size: sceneSize)
        
        window = GameWindowController(size: sceneSize, scene: gameScene)
        window.window!.appearance = NSAppearance(named: .vibrantDark)
        window.window!.title = "Asteroid Blaster"
        window.window!.makeKeyAndOrderFront(nil)
        
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}

