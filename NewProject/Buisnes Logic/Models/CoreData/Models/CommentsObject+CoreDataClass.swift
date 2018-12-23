//
//  CommentsObject+CoreDataClass.swift
//  NewProject
//
//  Created by Гузель on 23/12/2018.
//  Copyright © 2018 Гузель. All rights reserved.
//
//

import Foundation
import CoreData


public class CommentsObject: NSManagedObject {
    
    static func transfrom(_ comments: Comments?) -> CommentsObject? {
        guard let Lcomments = comments else { return nil }
        let commentsObject = CommentsObject(context: DataManagerImplementation.sharedInstance.getContext())
        commentsObject.count = Int32(Lcomments.count ?? -1)
        commentsObject.canPost = Int16(Lcomments.canPost ?? -1)
        commentsObject.groupsCanPost = Lcomments.groupsCanPost ?? false
        return commentsObject
    }

}
