import Foundation

struct Song: Identifiable {
    let id: UUID = UUID()
    var title: String
    var singer: String
}
