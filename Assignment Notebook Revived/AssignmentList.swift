//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Daksh Nakra on 1/27/23.
//

import Foundation

class AssignmentList: ObservableObject {

    @Published var items = [Assignment(course: "Computer Science", description: "Finish App", dueDate: Date()),

                            Assignment(course: "English", description: "Term Paper", dueDate: Date()),

                            Assignment(course: "Math", description: "Study for Test", dueDate: Date())]

 }
