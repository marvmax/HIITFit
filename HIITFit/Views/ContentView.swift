import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      WelcomeView()
      ForEach(0..<Exercise.exercises.count) { index in
        Text(Exercise.exercises[index].exerciseName)
      }
      ForEach(0..<Exercise.exercises.count) { index in
        Text(Exercise.exercises[index].videoName)
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
