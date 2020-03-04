//
//  PlaylistController.swift
//  PlaylistCoredata
//
//  Created by David on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    // Source of truth
    var playlists: [Playlist] {
        let fetchRequest: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return(try? CoreDataStack.context.fetch(fetchRequest)) ?? []
    }
    
    // Singleton
    static let shared = PlaylistController()
    
    // Crud
    func createPlaylist(with name: String) {
        Playlist(name: name)
        saveToPersistentStore()
    }
    
    func deletePlaylist(playlist: Playlist) {
        CoreDataStack.context.delete(playlist)
  //      saveToPersistentStore()
    }
    
    func saveToPersistentStore() {
        do {
            try CoreDataStack.context.save()
        } catch {
            print("There was an eror saving the data: \(#function) : \(error.localizedDescription)")
        }
    }
    
}
