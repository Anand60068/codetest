//
//  NotesModel+CoreDataProperties.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//
//

import Foundation
import CoreData


extension NotesModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NotesModel> {
        return NSFetchRequest<NotesModel>(entityName: "NotesModel")
    }

    @NSManaged public var note: String?

}
