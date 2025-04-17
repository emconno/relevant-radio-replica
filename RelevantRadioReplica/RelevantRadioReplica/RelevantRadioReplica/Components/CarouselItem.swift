//
//  CarouselItem.swift
//  RelevantRadioReplica
//
//  A structure to model a slide in an image carousel
//
//  Created by Emmett Connolly on 4/17/25.
//

import Foundation

struct CarouselItem: Identifiable {
    var id: UUID = UUID()
    var imageName: String
    var title: String
}
