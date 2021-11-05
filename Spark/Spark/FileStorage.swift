//
//  FileStorage.swift
//  Spark
//
//  Created by Torgeir Eikeland on 27/10/2021.
//

import Foundation
import SwiftUI

struct FileStorage {
    let friends = [
        Person(
            name: "Torgeir",
            age: 22,
            location: "Oslo",
            picture: "person",
            sameIntrests: 2
        ),
        Person(
            name: "Joey",
            age: 31,
            location: "Drammen",
            picture: "person",
            sameIntrests: 4
        ),
        Person(
            name: "Konstantin",
            age: 69,
            location: "Oslo",
            picture: "person",
            sameIntrests: 1),
        Person(
            name: "Kristian",
            age: 25,
            location: "Oslo",
            picture: "person",
            sameIntrests: 0)]
    
    let allEvents = [
        Event(
            eventName: "Nær deg",
            activies: [
                Activity(
                    name: "Tennis",
                    location: "Oslo",
                    icon: "Tennis Icon",
                    photo: "Tennis"),
                Activity(
                    name: "Fotball",
                    location: "Fotballbanen",
                    icon: "Fotball Icon",
                    photo: "Fotball"),
                Activity(
                    name: "Running",
                    location: "Ullevål",
                    icon: "Running Icon",
                    photo: "Running")]),
        Event(
            eventName: "Søker flere",
            activies: [
                Activity(
                    name: "Tennis",
                    location: "Oslo",
                    icon: "Tennis Icon",
                    photo: "Tennis"),
                Activity(
                    name: "Fotball",
                    location: "Fotballbanen",
                    icon: "Fotball Icon",
                    photo: "Fotball"),
                Activity(
                    name: "Running",
                    location: "Ullevål",
                    icon: "Running Icon",
                    photo: "Running")]),
        Event(
            eventName: "Starter Snart",
            activies: [
                Activity(
                    name: "Tennis",
                    location: "Oslo",
                    icon: "Tennis Icon",
                    photo: "Tennis"),
                Activity(
                    name: "Fotball",
                    location: "Fotballbanen",
                    icon: "Fotball Icon",
                    photo: "Fotball"),
                Activity(
                    name: "Running",
                    location: "Ullevål",
                    icon: "Running Icon",
                    photo: "Running")]),
        Event(
            eventName: "Basket",
            activies: [
                Activity(
                    name: "Tennis",
                    location: "Oslo",
                    icon: "Tennis Icon",
                    photo: "Tennis"),
                Activity(
                    name: "Fotball",
                    location: "Fotballbanen",
                    icon: "Fotball Icon",
                    photo: "Fotball"),
                Activity(
                    name: "Running",
                    location: "Ullevål",
                    icon: "Running Icon",
                    photo: "Running")]),
        Event(
            eventName: "Fotball",
            activies: [
                Activity(
                    name: "Tennis",
                    location: "Oslo",
                    icon: "Tennis Icon",
                    photo: "Tennis"),
                Activity(
                    name: "Fotball",
                    location: "Fotballbanen",
                    icon: "Fotball Icon",
                    photo: "Fotball"),
                Activity(
                    name: "Running",
                    location: "Ullevål",
                    icon: "Running Icon",
                    photo: "Running")])]
    
    func getEvents() -> [Event] {
        return allEvents
    }
    
    func getFriends() -> [Person] {
        return friends
    }
}

struct Event: Codable, Hashable {
    var eventName: String
    var activies: [Activity]
}

struct Activity: Codable, Hashable {
    let name: String
    let location: String
    let icon: String
    let photo: String
}

struct Person: Codable, Hashable {
    let name: String
    let age: Int
    let location: String
    let picture: String
    let sameIntrests: Int
}
