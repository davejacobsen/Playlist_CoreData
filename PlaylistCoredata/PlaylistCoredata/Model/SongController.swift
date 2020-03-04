//
//  SongController.swift
//  PlaylistCoredata
//
//  Created by David on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
    // Crud
    
    func createSong(with title: String, and artist: String, addTo playlist: Playlist) {
        Song(artist: artist, title: title, playlist: playlist)
        PlaylistController.shared.saveToPersistentStore()
    }
    
    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.shared.saveToPersistentStore()
    }
}
