//
//  ViewController.swift
//  VIPER example
//
//  Created by Alik Nigay on 11.03.2022.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: GreetingViewOutputProtocol!
    
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(withView: self)
    }

    @IBAction func showGreetingPressed(_ sender: UIButton) {
        presenter.didTapShowGreetingButton()
    }
}

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
    
}
