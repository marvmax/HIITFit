import SwiftUI

struct RatingView: View {
  @Binding var rating: Int
  let maximumRatingn = 5
  
  let onColor = Color.red
  let offColor = Color.gray
  
  var body: some View {
    HStack {
      ForEach(1 ..< maximumRatingn + 1) { index in
        Image(systemName: "waveform.path.ecg")
          .foregroundColor(
            index > rating ? offColor : onColor)
          .onTapGesture {
            rating = index
          }
      }
    }
    .font(.largeTitle)
  }
}

struct RatingViews_Previews: PreviewProvider {
  static var previews: some View {
    RatingView(rating: .constant(2))
      .previewLayout(.sizeThatFits)
  }
}
