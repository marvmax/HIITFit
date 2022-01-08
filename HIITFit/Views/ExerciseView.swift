import SwiftUI
import AVKit

struct ExerciseView: View {
  @Binding var selectedTab: Int
  @State private var rating = 0
  let index: Int
  let interval: TimeInterval = 30
  var lastExercise: Bool {
    index + 1 == Exercise.exercises.count
  }
  var body: some View {
    GeometryReader { geometry in
      VStack {
        HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
          .padding(.bottom)
        if let url = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: "mp4") {
          VideoPlayer(player: AVPlayer(url: url))
            .frame(height: geometry.size.height * 0.45)
        } else {
          Text("Couldn't find \(index).mp4")
            .foregroundColor(.red)
        }
        Text(Date().addingTimeInterval(interval), style: .timer)
          .font(.system(size: 90))
        HStack(spacing: 150) {
          Button("Start Exercise") {}
          Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
          }
        }
        .font(.title3)
        RatingView(rating: $rating)
          .padding()
        Spacer()
        Button(NSLocalizedString("History", comment: "view user activity")) { }
        .padding()
      }
    }
  }
}

struct ExerciseView_Previews: PreviewProvider {
  static var previews: some View {
    ExerciseView(selectedTab: .constant(1), index: 0)
  }
}


