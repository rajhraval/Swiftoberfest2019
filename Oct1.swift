import UIKit
import PlaygroundSupport

class ViewController: UIViewController, UIFontPickerViewControllerDelegate {
    
    var label: UILabel!
    var button: UIButton!
    
    override func viewDidLoad() {
        title = "Fun & Learn"
        view.backgroundColor = .white
        
        label = UILabel()
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        button = UIButton(type: .system)
        button.addTarget(self, action: #selector(presentFontPicker), for: .touchUpInside)
        button.setTitle("Choose Font", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 44)
        ])
        
    }
    
    @objc func presentFontPicker() {
        let picker = UIFontPickerViewController()
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        guard let descriptor = viewController.selectedFontDescriptor else { return }
        let font = UIFont(descriptor: descriptor, size: 24)
        label.font = font
    }
    
}

let master = ViewController()
let nav = UINavigationController(rootViewController: master)
PlaygroundPage.current.liveView = nav
