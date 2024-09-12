//
//  ListRowView.swift
//  TodoListApp
//
//  Created by EFE DAVRAN on 6.09.2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isComplated ? "checkmark.circle" : "circle")
                .foregroundColor(item.isComplated ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First Item!", isComplated: false)
    static var item2 = ItemModel(title: "Second Item!", isComplated: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
