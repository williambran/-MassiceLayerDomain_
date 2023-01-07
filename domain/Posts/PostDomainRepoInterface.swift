//
//  PostDomainRepoInterface.swift
//  domain
//
//  Created by wito on 22/12/22.
//


import Foundation


public protocol PostDomainRepoInterface {
    
    func getPosts(handler: @escaping ([PostEntity]) -> ())
}
