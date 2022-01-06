import Foundation

extension HistoryStore {
  mutating func createDevData() {
    // Development Data
    exerciseDays = [
      ExerciseDay(date: Date().addingTimeInterval(-86400),
                 exercise: [
                  Exercise.exercises[0].exerciseName,
                  Exercise.exercises[1].exerciseName,
                  Exercise.exercises[2].exerciseName]),
      ExerciseDay(date: Date().addingTimeInterval( -86400 * 2),
                 exercise: [
                  Exercise.exercises[1].exerciseName,
                  Exercise.exercises[2].exerciseName])
    ]
  }
}
