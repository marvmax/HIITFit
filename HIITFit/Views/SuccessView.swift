import SwiftUI

struct SuccessView: View {
    var body: some View {
      VStack {
        Spacer()
        Image(systemName: "hand.raised.fill")
          .resizedToFill(width: 75, height: 75)
          .foregroundColor(Color.purple)
        Text("High Five!")
          .font(.largeTitle)
          .fontWeight(.bold)
        Text(SuccessView.message)
          .foregroundColor(Color.gray)
          .multilineTextAlignment(.center)
        Spacer()
        Button(action: {} ) {
          Text("Continue")
        }
      }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}

extension SuccessView {
  static let message = """
Good job conmpleting all four exercises!
Remember tomorrow's another day.
So eat well and some rest.
"""
}
