import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      Text("Hello de World")
      ForEach(0..<4) { index in
        ExerciseView(index: index)
      }
      ForEach(0..<4) { index in
        ExerciseView(index: index)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
  }
}
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
