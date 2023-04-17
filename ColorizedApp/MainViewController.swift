//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Zaki on 17.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setBackgroundColor(from view: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingsViewController else { return }
        settingVC.delegate = self
        settingVC.viewColor = view.backgroundColor
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setBackgroundColor(from color: UIColor) {
        view.backgroundColor = color
    }
}
