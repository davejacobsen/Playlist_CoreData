//
//  Song+Convenience.swift
//  PlaylistCoredata
//
//  Created by David on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    @discardableResult
    convenience init(artist: String, title: String, playlist: Playlist, moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.title = title
        self.artist = artist
        self.playlist = playlist
        
    }
}
