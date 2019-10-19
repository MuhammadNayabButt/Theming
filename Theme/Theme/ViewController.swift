//
//  ViewController.swift
//  Theme
//
//  Created by Nayab Butt on 19/10/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var headingLbl: UILabel!
    @IBOutlet weak var subHeadingLbl: UILabel!
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var toggleButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTapSwitch(_ sender: Any) {
        if toggleButton.isOn {
            ThemesManager.shared.setTheme(theme: MainTheme())
        }
        else {
            ThemesManager.shared.setTheme(theme: SecondaryTheme())
        }
        reloadViews()
    }
    func reloadViews(){
        view.backgroundColor = ThemesManager.shared.theme?.backgroundColor
        containerView.backgroundColor = ThemesManager.shared.theme?.secondaryBackgroundColor
        headingLbl.textColor = ThemesManager.shared.theme?.heading
        subHeadingLbl.textColor = ThemesManager.shared.theme?.subHeading
        toggleButton.tintColor = ThemesManager.shared.theme?.tintColor
    }
    
}

