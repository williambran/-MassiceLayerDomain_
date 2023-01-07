//
//  PostEntity.swift
//  domain
//
//  Created by wito on 22/12/22.
//

import Foundation


public struct PostEntity: Identifiable {
    
    public let userId: Int?
    public let id: Int?
    public let title: String?
    public let body: String
    
    public init(userId: Int?, id: Int?, title: String?, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
