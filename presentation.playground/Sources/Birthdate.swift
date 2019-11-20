import Foundation

public struct Birthdate {
    
    private let calendar = Calendar.current
    private let date: Date!
    
    public init(withDay day: Int, month: Int, andYear year: Int) {
        let components = DateComponents(calendar: calendar, year: year, month: month, day: day)
        date = components.date!
    }
    
    public var hasBirthday: Bool {
        let now = Date()
        let currentMonth = calendar.component(.month, from: now)
        let currentDay = calendar.component(.day, from: now)
        
        let birthMonth = calendar.component(.month, from: date)
        let birthDay = calendar.component(.day, from: date)
        
        return currentMonth == birthMonth && currentDay == birthDay
    }
    
}
