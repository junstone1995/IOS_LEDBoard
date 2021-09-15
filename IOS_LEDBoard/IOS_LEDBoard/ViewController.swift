//
//  ViewController.swift
//  IOS_LEDBoard
//
//  Created by Junseok Lee on 2021/09/15.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate{

    @IBOutlet weak var contentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentLabel.textColor = .yellow
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController{
            settingViewController.delegate = self
            settingViewController.ledText = self.contentLabel.text
            settingViewController.textColor = self.contentLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
    }

    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text{
            self.contentLabel.text = text
        }
        self.contentLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

