//
//  ScrollableItem.swift
//  RelevantRadioReplica
//
//  Structure to model an item in a horizontal, scrollable list.
//
//  Created by Emmett Connolly on 4/17/25.
//

import Foundation


struct ScrollableItem: Identifiable {
    var id:UUID = UUID()
    var imageName: String
    var height: CGFloat; var width: CGFloat
    var caption: String? = nil
    var date: String? = nil
}
