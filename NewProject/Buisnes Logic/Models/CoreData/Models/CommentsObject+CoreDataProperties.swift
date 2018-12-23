//
//  CommentsObject+CoreDataProperties.swift
//  NewProject
//
//  Created by Гузель on 23/12/2018.
//  Copyright © 2018 Гузель. All rights reserved.
//
//

import Foundation
import CoreData


extension CommentsObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CommentsObject> {
        return NSFetchRequest<CommentsObject>(entityName: "CommentsObject")
    }

    @NSManaged public var count: Int32
    @NSManaged public var canPost: Int16
    @NSManaged public var groupsCanPost: Bool

}
