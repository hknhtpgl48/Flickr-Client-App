//
//  Photos.swift
//  Flickr Client App
//
//  Created by Hakan Hatipoğlu on 29.03.2023.
//

import Foundation
struct Photos: Codable {
    //Servisten gelenler optional olmalı
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let photo: [Photo]?
}
