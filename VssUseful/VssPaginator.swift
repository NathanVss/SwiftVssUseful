//
//  VssPaginator.swift
//  Pods
//
//  Created by Nathan Vasse on 22/06/2016.
//
//
public class VssPaginator {
    
    var offset: Int
    var limit: Int
    var page: Int
    
    public init(entitiesPerGroup limit: Int) {
        self.limit = limit
        self.offset = 0
        self.page = 0
    }
    
    public func reset() {
        self.offset = 0
        self.page = 0
    }
    
    public func incr() {
        self.offset += self.limit
        self.page += 1
    }
    
    public func toArray() -> [String: Int] {
        return ["limit": self.limit, "offset": self.offset]
    }
    
    public func salute() {
        print("For those about to rock ...")
    }
}
