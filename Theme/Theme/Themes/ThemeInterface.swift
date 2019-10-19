//
//  ThemeInterface.swift
//  Theme
//
//  Created by Nayab Butt on 19/10/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation
import UIKit
protocol Theme {
    var backgroundColor : UIColor { get }
    var secondaryBackgroundColor : UIColor {get}
    var heading : UIColor {get}
    var subHeading : UIColor {get}
    var sepratorColor : UIColor { get }
    var tintColor : UIColor { get }
}
//

struct MainTheme : Theme {
    var backgroundColor: UIColor = UIColor.init(named: "BackGround")!
    var secondaryBackgroundColor = UIColor.init(named: "SecondaryBackGround")!
    var heading: UIColor = UIColor.init(named: "Heading")!
    var subHeading: UIColor = UIColor.init(named: "SubHeading")!
    var sepratorColor: UIColor = UIColor.init(named: "SeparatorColor")!
    var tintColor: UIColor = UIColor.init(named: "Tint")!
}

struct SecondaryTheme : Theme {
    var backgroundColor = UIColor.black
    var secondaryBackgroundColor = UIColor.green
    var heading = UIColor.black
    var subHeading = UIColor.purple
    var sepratorColor: UIColor = UIColor.red
    var tintColor: UIColor = UIColor.green
}



/* Following will be used when we need proper get functions*/
protocol CurrentTheme {
    func backgroundColor() -> UIColor
    func navBarColor() -> UIColor
    func textColor() -> UIColor
}
class RedTheme : CurrentTheme {
    func backgroundColor() -> UIColor {
        return UIColor.lightGray

    }
    
    func navBarColor() -> UIColor {
        return UIColor.darkGray
    }
    
    func textColor() -> UIColor {
        return UIColor.black
    }
}
