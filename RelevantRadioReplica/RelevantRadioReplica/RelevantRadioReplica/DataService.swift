//
//  DataService.swift
//  RelevantRadioReplica
//
//  A structure to house all of the raw, hard-coded data/assets for the app in place of a database
//
//  Created by Emmett Connolly on 4/17/25.
//

import Foundation

struct DataService {
    
    func getShows() -> [ScrollableItem] {
        return [
            ScrollableItem(imageName: "fraa", height: 140, width: 140),
            ScrollableItem(imageName: "patrick-madrid", height: 140, width: 140),
            ScrollableItem(imageName: "drew-mariani", height: 140, width: 140),
            ScrollableItem(imageName: "fr-simon", height: 140, width: 140),
        ]
    }
    
    func getBest() -> [ScrollableItem] {
        return [
            ScrollableItem(imageName: "prophecies", height: 170, width: 270, caption: "The Prophecies of a Suffering Messiah (Morning Air)", date: "Wednesday, April 16, 2025"),
            ScrollableItem(imageName: "passion", height: 170, width: 270, caption: "\"Should I Let My Kids Watch The Passion of the Christ?\" (The Patrick Madrid Show)", date: "Tuesday, April 15, 2025"),
            ScrollableItem(imageName: "mary", height: 170, width: 270, caption: "Encountering the Stations of the Cross with Mary (The Inner Life with Patrick Conley)", date: "Monday, April 14, 2025")
        ]
    }
    
    func getCarouselItems() -> [CarouselItem] {
            return [
                CarouselItem(imageName: "happy-couple", title: "Lenten Lessons on the Sacraments Thirty-Eight: Can You Get Married On The Beach?"),
                CarouselItem(imageName: "wedding-at-cana", title: "Lenten Lessons on the Sacraments Thirty-Seven: Why Is Marriage So Vital To Our Survival?"),
                CarouselItem(imageName: "mary-and-jesus", title: "Join Us For Special Holy Week Devotions April 17-19")
            ]
    }
    
    func getPrayers() -> [ScrollableItem] {
        return [
            ScrollableItem(imageName: "r25", height: 140, width: 140),
            ScrollableItem(imageName: "r15", height: 140, width: 140),
            ScrollableItem(imageName: "rquiet", height: 140, width: 140),
            ScrollableItem(imageName: "spanish", height: 140, width: 140),
            ScrollableItem(imageName: "latin", height: 140, width: 140),
            ScrollableItem(imageName: "chaplet", height: 140, width: 140)
        ]
    }
}
