import SwiftUI

struct ContentView: View {
  @State private var selectedTab = 9
  var body: some View {
    TabView(selection: $selectedTab) {
      WelcomeView(selectedTab: $selectedTab)
        .tag(9)
      ForEach(0..<Exercise.exercises.count) { index in
//        Text(Exercise.exercises[index].exerciseName)
        ExerciseView(selectedTab: $selectedTab, index: index)
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
