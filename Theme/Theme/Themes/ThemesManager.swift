//
//  ThemesManager.swift
//  Theme
//
//  Created by Nayab Butt on 19/10/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation
class ThemesManager {
    var theme : Theme?
    static var shared : ThemesManager = {
        let themeneManager  = ThemesManager()
        return themeneManager
    }()
    
    func setTheme(theme : Theme){
        self.theme = theme
    }
}
