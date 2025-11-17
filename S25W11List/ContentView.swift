import SwiftUI

struct ContentView: View {
    var body: some View {
        MyList()
    }
}

struct MyList: View {
    @State var viewModel = SongViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.songs) { song in
                SongItem(song: song)
            }
            
        }
        .onAppear {
            viewModel.add(song: Song(title: "Golden", singer: "HUNTR/X"))
            viewModel.add(song: Song(title: "Drowning", singer: "WOODZ"))
            viewModel.add(song: Song(title: "Soda Pop", singer: "Saja Boys"))
        }
    }
}

struct SongItem: View {
    let song: Song
    var body: some View {
        VStack{
            TestTitle(title: song.title)
            TestSinger(singer: song.singer)
        }
    }
}

struct TestTitle: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(.blue)
            .padding()
    }
}

struct TestSinger: View {
    let singer: String
    var body: some View {
        Text(singer)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.headline)
            .foregroundColor(.gray)
            .padding()
    }
}


#Preview {
    ContentView()
}
