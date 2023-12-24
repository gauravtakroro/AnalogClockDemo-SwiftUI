//
//  HomeViewModel.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import Foundation

protocol HomeViewModelProtocol: ObservableObject {
}

class HomeViewModel: HomeViewModelProtocol {
    @Published var isDark: Bool = false
}
