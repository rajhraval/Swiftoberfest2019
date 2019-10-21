let vc = MyOtherViewController()

// A Card like UI would appear and you can swipe it
vc.isModalInPresentation = true //By default it is false

present(vc, animated: true)
