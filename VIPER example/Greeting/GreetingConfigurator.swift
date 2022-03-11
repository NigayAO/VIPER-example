//
//  GreetingConfigurator.swift
//  VIPER example
//
//  Created by Alik Nigay on 11.03.2022.
//

import Foundation

protocol GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
