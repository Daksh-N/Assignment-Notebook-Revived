//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Daksh Nakra on 1/27/23.
//

import Foundation

/*
class AssignmentList: ObservableObject {
    
    @Published var items = [Assignment(course: "Computer Science", description: "Finish App", dueDate: Date()),
                            
                            Assignment(course: "English", description: "Term Paper", dueDate: Date()),
                            
                            Assignment(course: "Math", description: "Study for Test", dueDate: Date())]
    
}
*/

class AssignmentList: ObservableObject {
    @Published var items: [Assignment] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "data")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard.data(forKey: "data") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Assignment].self, from: items) {
                self.items = decoded
                return
            }
        }
        items = []
    }
}
