//
//  Message.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import Foundation
import Firebase


class Message {
    
    var text: String = ""
    let ref: DatabaseReference!
    
    init(text: String) {
        self.text = text
        ref = Database.database().reference().child("stories").childByAutoId()
    }
    
    init(snapshot: DataSnapshot)
    {
        ref = snapshot.ref
        if let value = snapshot.value as? [String : Any] {
            text = value["text"] as! String
        }
    }
    
    func save() {
        ref.setValue(toDictionary())
    }
    
    func toDictionary() -> [String : Any]
    {
        return [
            "text" : text
        ]
    }
}
