//
//  ExpenseRow.swift
//  JsonStorage
//
//  Created by Phipps A (FCES) on 01/03/2023.
//

import SwiftUI

struct ExpenseRow: View {
    var expense: Expense
    var body: some View {
        HStack{
        
            expense.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(expense.expenseName)
            if(expense.ispaid == true){
                Text("| Paid |")
                    .font(.subheadline)
            }
            else{
                Text("| Not Paid|")
                    .font(.footnote)
            }
            Spacer()
            if(expense.vat == true){
                Text("| VAT INCLUDED |")
                    .font(.caption2)
            }
            else{
                Text("| NO VAT |")
                    .font(.caption2)
            }
        }
    }
}

struct ExpenseRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ExpenseRow(expense: expenses[0])
            ExpenseRow(expense: expenses[1])
            ExpenseRow(expense: expenses[2])
            
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
