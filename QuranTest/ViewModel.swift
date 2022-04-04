//
//  ViewModel.swift
//  QuranTest
//
//  Created by Mohammed Alsaleh on 02/09/1443 AH.
//

import Foundation
import Combine

class VM : ObservableObject {
    @Published var data = [QuranModel]()
    
    init() {
        self.GetData()
    }
    
    func GetData() {
        if let url = Bundle.main.url(forResource: "quran", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let jsonData = try JSONDecoder().decode(Quran.self, from: data)
                
                self.data.append(contentsOf: jsonData)
            } catch {
                print("decode error")
            }
        }
    }
}
