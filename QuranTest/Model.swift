//
//  Model.swift
//  QuranTest
//
//  Created by Mohammed Alsaleh on 02/09/1443 AH.
//

import Foundation

struct QuranModel : Codable {
    var id : Int
    var name : String
    var transliteration :String
    var type : String
    var total_verses : Int
    var verses : [Verses]
}

struct Verses : Codable {
    var id : Int
    var text : String
}

typealias Quran = [QuranModel]
