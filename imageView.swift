//
//  imageView.swift
//  JsonStorage
//
//  Created by Phipps A (FCES) on 01/03/2023.
//

import SwiftUI

struct imageView: View {
    var body: some View {
        Image("expense1")
            .resizable(resizingMode: .stretch)
            .clipShape(Circle())
            .frame(width: 200, height: 100)
    }
}

struct imageView_Previews: PreviewProvider {
    static var previews: some View {
        imageView()
    }
}
