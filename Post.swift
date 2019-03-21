////
////  Post.swift
////  onbaording
////
////  Created by Emmanuel Idehen on 3/19/19.
////  Copyright © 2019 Emmanuel Idehen. All rights reserved.
////
//
//import Foundation
//import UIKit
//import FirebaseDatabase.FIRDataSnapshot
//
//class Post {
//    // properties and initializers
//    var key: String?
//    let imageURL: String
//    let imageHeight: CGFloat
//    let creationDate: Date
//    
//    
//    
//    init(imageURL: String, imageHeight: CGFloat) {
//        self.imageURL = imageURL
//        self.imageHeight = imageHeight
//        self.creationDate = Date()
//    }
//
//    var dictValue: [String : Any] {
//        let createdAgo = creationDate.timeIntervalSince1970
//        
//        return ["image_url" : imageURL,
//                "image_height" : imageHeight,
//                "created_at" : createdAgo]
//    }
//    
//    
//    private static func create(forURLString urlString: String, aspectHeight: CGFloat) {
//        // create new post in database
//        
//        // 1
//        let currentUser = User.current
//        // 2
//        let post = Post(imageURL: urlString, imageHeight: aspectHeight)
//        // 3
//        let dict = post.dictValue
//        
//        // 4
//        let postRef = Database.database().reference().child("posts").child(currentUser.uid).childByAutoId()
//        //5
//        postRef.updateChildValues(dict)
//    }
//    
//    
//    
//}
//
