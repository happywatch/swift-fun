// Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"

import SceneKit
import XCPlayground

let width:CGFloat = 400
let height:CGFloat = 400

var view = SCNView(frame: CGRect(
    x: 0,
    y: 0,
    width: width,
    height: height))
var scene = SCNScene()
view.scene = scene
view.backgroundColor = NSColor.blackColor()
view.autoenablesDefaultLighting = true

var camera = SCNCamera()
var cameraNode = SCNNode()
cameraNode.camera = camera
cameraNode.position = SCNVector3(x: 0, y: 0, z: 3)
scene.rootNode.addChildNode(cameraNode)

for var i = 0; i < 50; i++ {
    var torus = SCNTorus(
        ringRadius: CGFloat(arc4random_uniform(150)) / 100.0,
        pipeRadius: 0.02)
    var torusNode = SCNNode(geometry: torus)
    scene.rootNode.addChildNode(torusNode)
    
    torus.firstMaterial?.diffuse.contents = NSColor(
        calibratedHue: CGFloat(arc4random_uniform(100)) / 300.0 + 0.3,
        saturation: 0.5,
        brightness: 1.0,
        alpha: 0.95)
    torus.firstMaterial?.specular.contents = NSColor.redColor()
    
    var spin = CABasicAnimation(keyPath: "rotation")
    spin.toValue = NSValue(SCNVector4:SCNVector4(
        x: CGFloat(random()),
        y: CGFloat(random()),
        z: CGFloat(random()),
        w: CGFloat(M_PI) * 2.0))
    spin.duration = NSTimeInterval(arc4random_uniform(20) + 5)
    spin.repeatCount = HUGE
    torusNode.addAnimation(spin, forKey: "spin")
}

XCPShowView("View", view)