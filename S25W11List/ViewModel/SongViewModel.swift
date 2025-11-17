import Foundation

@Observable

final class SongViewModel {
    private var _songs: [Song] = []
    
    
    var songs: [Song]{
        _songs
    }
    
    
    func add(song: Song){
        _songs.append(song)
    }
    
}


