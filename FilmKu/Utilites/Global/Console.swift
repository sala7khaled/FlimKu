//
//  Console.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright Ā© 2023 Salah Khaled. All rights reserved.
//

import Foundation

open class Console {
    
    static func logAPI(_ url: String, _ headers: [String:String], _ body: Any, _ statusCode: Int, _ response: String, _ error: Error?) {
        log("\n-------------------- API Calling Start", "--------------------")
        log("\nš Url", url)
        log("\nš§© Headers", headers)
        log("\nš¦ Body", body)
        log("\n#ļøā£ Status code", statusCode)
        log("\nš„ Response", response)
        switch statusCode {
        case 200...299:
            log("\nš State: \(url.replacingOccurrences(of: API.baseUrl, with: ""))", "ā Success")
            break
        default:
            log("\nš© State: \(url.replacingOccurrences(of: API.baseUrl, with: ""))", "ā Error: \(String(describing: error)) ā¹")
            break
        }
        log("\n--------------------- API Calling End", "---------------------\n")
    }

    static func logError(_ type: APIErrorType) {
        Console.log("ā Error", "\(type)")
    }
    
    static func log(_ tag: String, _ text: Any) {
        #if DEBUG
        print("\(tag): \(text)")
        #endif
    }
}
