//
//  NewsItem.swift
//  StretchMyHeader
//
//  Created by Daniel Grosman on 2017-12-05.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

import Foundation
import UIKit

struct NewsItem {
    enum  NewsCategory {
        case World
        case Americas
        case Europe
        case MiddleEast
        case Africa
        case AsiaPacific
        
        func convertToString () -> String {
            switch self {
            case .World:
                return "World"
            case .Americas:
                return "Americas"
            case .Europe:
                return "Europe"
            case .MiddleEast:
                return "Middle East"
            case .Africa:
                return "Africa"
            case .AsiaPacific:
                return "AsiaPacific"
            }
        }
        
        func convertToColour () -> UIColor {
            switch self {
            case .World:
                return UIColor.red
            case .Americas:
                return UIColor.blue
            case .Europe:
                return UIColor.green
            case .MiddleEast:
                return UIColor.yellow
            case .Africa:
                return UIColor.orange
            case .AsiaPacific:
                return UIColor.purple
            }
        }
    }
    
    let category: NewsCategory
    let summary: String
}
