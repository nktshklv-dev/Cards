//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        setupViews()
    }
    
    func setupViews(){
       
        self.view = getRootView()
       
    }
    
    func getRootView() -> UIView{
        let rootView = UIView()
        view.backgroundColor = .gray
        return rootView
    }
    
    func getRedView() -> UIView{
        let redView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redView.backgroundColor = .red
        return redView
    }

  
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
