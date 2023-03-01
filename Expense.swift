//
//  Expense.swift
//  JsonStorage
//
//  Created by Phipps A (FCES) on 01/03/2023.
//

import Foundation
import SwiftUI

class Expense: Codable, ObservableObject{
    var expenseName: String
    var expenseDescription: String
    var total: Double
    @Published var ispaid: Bool
    var dateAdded: String
    var dateofRecipt: String
    var dateofExpensePayment: String
    var vat: Bool
    private var picture: String
    
    var image: Image{
        Image(picture)
    }
    
    
}
