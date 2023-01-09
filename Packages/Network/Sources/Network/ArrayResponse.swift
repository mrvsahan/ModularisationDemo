//
//  ArrayResponse.swift
//  
//
//  Created by Merve Sahan on 18.02.2022.
//

import Foundation

struct ArrayResponse<T>: Decodable where T: Decodable {
    
     typealias Data = [T]
    
    let data: Data
    
     init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        data = try container.decode([T].self)
    }
}
