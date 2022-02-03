import Subsonic
import SwiftUI

struct ContentView: View {
    let names = ["1", "2", "3"]
    let column = [
        GridItem(.adaptive(minimum:250))
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(names, id: \.self){ name in
                        Button{
                            play(sound: "\(name).mp3")
                            print("\(name) was tapped")
                        } label: {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("Minecraft 2.0")
        }
        .navigationViewStyle(.stack)
    }
}
