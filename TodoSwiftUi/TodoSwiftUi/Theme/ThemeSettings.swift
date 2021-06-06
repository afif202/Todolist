//
//  ThemeSettings.swift
//  TodoSwiftUi
//
//  Created by macbook on 25/02/21.
//
//get=ngambil data
//set=memproses data

import SwiftUI

public class Themesettings: ObservableObject {
    @Published public var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet{
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
    
    private init (){}
    public static let shared = Themesettings()
}
