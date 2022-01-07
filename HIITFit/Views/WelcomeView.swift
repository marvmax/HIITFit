import SwiftUI

struct WelcomeView: View {
    var body: some View {
      ZStack {
        VStack {
          HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
              Text(NSLocalizedString("Get Fit", comment: "invitation to exercise"))
                .font(.largeTitle)
              Text("with high intensity interval training.")
                .font(.headline)
            }
            Image("step-up")
              .resizedToFill(width: 240, height: 240)
              .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
          }
          Button(action: {}) {
            Text(NSLocalizedString("Get Started", comment: "invitation"))
            Image(systemName: "arrow.right.circle")
          }
          .padding()
          .background(
            RoundedRectangle(cornerRadius: 20)
              .stroke(lineWidth: 2))
        }
        VStack {
          HeaderView(titleText: NSLocalizedString("Welcome", comment: "greeing"))
          Spacer()
          Button(NSLocalizedString("History", comment: "view usere activity")) {}
          .padding()
        }
//        .background(
//          RoundedRectangle(cornerRadius: 20)
//            .stroke(Color.gray, lineWidth: 2))
      }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
