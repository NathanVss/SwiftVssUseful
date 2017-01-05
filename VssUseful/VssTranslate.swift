//
//  VssTranslate.swift
//  VssUseful
//
//  Created by Nathan Vasse on 07/07/2016.
//  Copyright © 2016 Nathan Vasse. All rights reserved.
//

public class VssTranslate {

    public static func placeVars(translation: String, values: [String: String]?) -> String {
        var toFill = translation
        if values != nil {
            for (key, value) in values! {
                toFill = toFill.stringByReplacingOccurrencesOfString("%" + key + "%", withString: value)
            }
        }
        return toFill
    }
    
    public static func string(name: String, values: [String: String]? = nil) -> String {
        let string = NSLocalizedString(name, comment: "")
        return placeVars(string, values: values)
    }
    
    public static func string(name: String, table: String, values: [String: String]?) -> String {
        let string = NSLocalizedString(name, tableName: table, comment: "")
        return placeVars(string, values: values)
    }
}
