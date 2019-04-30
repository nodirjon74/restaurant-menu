//
//  NetworkService.swift
//  RestaurantMenu
//
//  Created by Nodirjon on 4/16/19.
//  Copyright © 2019 Nodirjon. All rights reserved.
//

import Foundation
import Moya

private let apiKey = "43yaeUMn2x4S5L5DZYKKu4EhL0byWRY4SHbbG44Ol4qEq-2KySm8EqbxGyqF9kOcIeecaSA_tadlhmB1NSdSuwq0I0s0uPXf7lFCLS7G0otdN4Qpvp8ORyeam6m1XHYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }
        
        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }
        
        var method: Moya.Method {
            return .get
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
        }
        
        var headers: [String : String]? {
            return ["Authorization" : "Bearer \(apiKey)"]
        }
    }
}
