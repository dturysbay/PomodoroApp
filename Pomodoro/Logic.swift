//
//  Logic.swift
//  Pomodoro
//
//  Created by Dinmukhambet Turysbay on 21.04.2023.
//

import SwiftUI

extension Color{
    static let customGray = Color(red: 0.958, green: 0.958, blue: 0.958)
}

enum StorageStates: String{
    case focusValue
    case time
}

enum FocusCategory: String{
    case work
    case study
    case workout
    case reading
    case meditation
    case other
}

struct PomodoroStorage{
    @AppStorage(StorageStates.focusValue.rawValue) static var focusName: FocusCategory = .work
}
