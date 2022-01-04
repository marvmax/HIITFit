import SwiftUI

struct RatingViews: View {
  var body: some View {
    HStack {
      ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
        Image(systemName: "waveform.path.ecg")
          .foregroundColor(.gray)
      }
    }
  }
}

struct RatingViews_Previews: PreviewProvider {
  static var previews: some View {
    RatingViews()
      .previewLayout(.sizeThatFits)
  }
}
