//
//  PostInteractor.swift
//  domain
//
//  Created by wito on 22/12/22.
//

import Foundation


public protocol PostInteractorInterface {
        
    func getPosts(handler: @escaping ([PostEntity]) -> ())
    
}

public class PostInteractor: PostInteractorInterface {
        
    let postDomainRepo: PostDomainRepoInterface
    
    public init(postDomainRepo: PostDomainRepoInterface) {
        
        self.postDomainRepo = postDomainRepo
    }
    
    
    public func getPosts(handler: @escaping ([PostEntity]) -> ()) {
        
        postDomainRepo.getPosts { (PostDomainModelArray) in
            handler(PostDomainModelArray)
        }
    }
}
