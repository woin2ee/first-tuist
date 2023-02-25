import UIKit
import FirstTuistKit
import FirstTuistUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        FirstTuistKit.hello()
        FirstTuistUI.hello()
        
        SomePublicClass.printHello()
//        SomeInternalClass.printHello() // syntax error

        return true
    }

}
