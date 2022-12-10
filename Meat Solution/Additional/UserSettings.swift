//
//  UserSettings.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 07/12/22.
//

import Foundation

class UserSettings: ObservableObject {

    static func setUser(fullname: String, email: String, password: String, phoneNum: String = "") {
        print("Fullname:\(fullname)\nEmail:\(email)")
        UserDefaults.standard.set(fullname, forKey: "userFullname")
        UserDefaults.standard.set(email, forKey: "userEmail")
        UserDefaults.standard.set(password, forKey: "userPassword")
    }

    static func setDeliverTo(recName: String, recEmail: String, recPhone: String, address: String, city: String, postal: String) {
        UserDefaults.standard.set(recName, forKey: "recName")
        UserDefaults.standard.set(recEmail, forKey: "recEmail")
        UserDefaults.standard.set(recPhone, forKey: "recPhone")
        UserDefaults.standard.set(address, forKey: "desAddress")
        UserDefaults.standard.set(city, forKey: "desCity")
        UserDefaults.standard.set(postal, forKey: "desPostal")
    }

    static func getDeliverTo() {
        _ = UserDefaults.standard.string(forKey: "desAddress")
        _ = UserDefaults.standard.string(forKey: "desCity")
        _ = UserDefaults.standard.string(forKey: "desPostal")
    }

    static func resetAll() {
        UserDefaults.standard.removeObject(forKey: "userFullname")
        UserDefaults.standard.removeObject(forKey: "userEmail")
        UserDefaults.standard.removeObject(forKey: "userPassword")
        UserDefaults.standard.removeObject(forKey: "userPhone")

        UserDefaults.standard.removeObject(forKey: "recName")
        UserDefaults.standard.removeObject(forKey: "recEmail")
        UserDefaults.standard.removeObject(forKey: "recPhone")
        UserDefaults.standard.removeObject(forKey: "recPhone")
        UserDefaults.standard.removeObject(forKey: "desCity")
        UserDefaults.standard.removeObject(forKey: "desPostal")
    }
}
