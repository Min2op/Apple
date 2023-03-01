//
//  ExpenseList.swift
//  JsonStorage
//
//  Created by Phipps A (FCES) on 01/03/2023.
//

import SwiftUI

struct ExpenseList: View {
    var body: some View {
        List(expenses, id: \.expenseName){ expense in
            ExpenseRow(expense: expense)
            }
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseList()
    }
}
