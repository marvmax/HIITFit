import SwiftUI
let history = HistoryStore()

struct HistoryView: View {
  @Binding var showHistory: Bool
  var body: some View {
    ZStack(alignment: .topTrailing) {
      Button(action: { showHistory.toggle() }) {
        Image(systemName: "xmark.circle")
          .font(.title)
          .padding()
      }
      VStack {
        Text(NSLocalizedString("History", comment: "view user activity"))
          .font(.title)
          .padding()
        Form {
          ForEach(history.exerciseDays) { day in
          Section(
            header: Text(day.date.formatted(as: "MMM d"))
              .font(.headline)) {
                ForEach(day.exercise , id: \.self) { exercise in
                  Text(exercise)
                }
              }
          }
        }
      }
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView(showHistory: .constant(true))
  }
}
