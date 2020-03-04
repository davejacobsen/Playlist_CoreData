//
//  CoreDataStack.swift
//  PlaylistCoredata
//
//  Created by David on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
   static let container: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "PlaylistCoredata")
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("failed to load persistent stores \(error)")
            }
        }
        return container
    }()
    
   static var context: NSManagedObjectContext {
        return container.viewContext
    }
}

