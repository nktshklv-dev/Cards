//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import CoreGraphics

class MyViewController : UIViewController {
    override func loadView() {
      let view = UIView()
        view.backgroundColor = .white
        createBezier2(on: view)
        self.view = view
        
    }
}

private func createBezier(on view: UIView){
    let shapeLayer = CAShapeLayer()
    view.layer.addSublayer(shapeLayer)
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.lineWidth = 5
    shapeLayer.path = getPath().cgPath
    
}

private func createBezier2(on view: UIView){
    let shapeLayer = CAShapeLayer()
    view.layer.addSublayer(shapeLayer)
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.lineWidth = 5
    shapeLayer.path = getDick().cgPath
    shapeLayer.fillColor = UIColor.red.cgColor
    shapeLayer.lineDashPattern = [10,2]
    shapeLayer.lineCap = .round
    shapeLayer.lineJoin = .bevel
    
    
}
private func getDick() -> UIBezierPath{
    var path = UIBezierPath()
   
    let rect = CGRect(x: 10, y: 10, width: 100, height: 50)
     path = UIBezierPath(rect: rect)
    return path
}
private func getPath() -> UIBezierPath{
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 50, y: 50))
    path.addLine(to: CGPoint(x: 150, y: 50))
    return path
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
