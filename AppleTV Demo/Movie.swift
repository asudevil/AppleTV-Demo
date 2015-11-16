//
//  Movie.swift
//  AppleTV Demo
//
//  Created by admin on 9/21/15.
//  Copyright © 2015 CodeWithFelix. All rights reserved.
//

import Foundation

class Movie {
    
    let URL_BASE = "http://image.tmdb.org/t/p/w500"
    
    var title: String!
    var overview: String!
    var posterPath: String!
    var releaseDate: String!
    var ratings: String!
    
    init(movieDict: Dictionary<String, AnyObject>) {
        
        if let title = movieDict["title"] as? String {
            self.title = title
        }
        
        if let overview = movieDict["overview"] as? String {
            self.overview = overview
        }
        
        if let path = movieDict["poster_path"] as? String {
            
            self.posterPath = "\(URL_BASE)\(path)"
        }
        
        if let releaseDate = movieDict["release_date"] as? String {
            
            self.releaseDate = releaseDate
        }
        
        if let ratings = movieDict["vote_average"] as? String {
            self.ratings = ratings
        }
        
    }
}
