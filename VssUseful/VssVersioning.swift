//
//  VssVersioning.swift
//  Pods
//
//  Created by Nathan Vasse on 22/12/2016.
//
//
import Regex

public class VssVersioning {
    
    public static func toInt(version: String) -> Int {
        let regex = Regex("(\\d+)\\.(\\d+)\\.(\\d+)")
        if regex.matches(version) {
            let matches = regex.match(version)!
            let major = Int(matches.captures[0]!)!
            let minor = Int(matches.captures[1]!)!
            let patch = Int(matches.captures[2]!)!
            
            // max : 10 000 patchs
            // max : 10 000 minor
            return patch + minor * 10000 + major * 100000000
        }
        
        return 0
    }
    
}