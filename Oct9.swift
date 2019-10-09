import UIKit
import CoreImage
import CoreImage.CIFilterBuiltins
import PlaygroundSupport

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Bird")
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let context = CIContext(options: nil)
        let blur = CIFilter.gaussianBlur()
        blur.inputImage = CIImage(image: UIImage(named: "Bird")!) // Better to use guard let
        blur.radius = 30
        
        if let output = blur.outputImage {
            if let cGImage = context.createCGImage(output, from: output.extent) {
                let processedImage = UIImage(cgImage: cGImage)
                imageView.image = processedImage
            }
        }
            
    }
    
}

let main = ViewController()
let nav = UINavigationController(rootViewController: main)
PlaygroundPage.current.liveView = nav
