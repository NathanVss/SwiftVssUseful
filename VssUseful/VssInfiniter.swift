//
//  VssInfiniter.swift
//  Pods
//
//  Created by Nathan Vasse on 25/06/2016.
//
//
public class VssInfiniter {
    
    public var paginator: VssPaginator!
    public var isLoading = false
    public var isFull = false
    public var isRefreshing = false
    
    var onLoadingClosures: [() -> ()] = []
    var onLoadedClosures: [() -> ()] = []
    
    public init(entitiesPerGroup: Int) {
        self.paginator = VssPaginator(entitiesPerGroup: entitiesPerGroup)
    }
    
    public func onLoaded(closure: () -> ()) {
        onLoadedClosures += [closure]
    }
    
    public func onLoading(closure: () -> ()) {
        onLoadingClosures += [closure]
    }
    
    public func incr() {
        self.paginator.incr()
    }
    
    public func reset() {
        self.loaded()
        self.isFull = false
        self.paginator.reset()
    }
    
    public func refreshing() {
        self.isRefreshing = true
        self.reset()
    }
    
    public func refreshed() {
        self.isRefreshing = false
    }
    
    public func loading() {
        self.isLoading = true
        for closure in onLoadingClosures {
            closure()
        }
    }
    
    public func loaded() {
        self.isLoading = false
        for closure in onLoadedClosures {
            closure()
        }
    }
    
    public func full() {
        self.isFull = true;
        self.loaded()
    }
    
    public func canLoad() -> Bool {
        return !self.isFull && !self.isLoading
    }
    
    public func cantLoad() -> Bool {
        return !self.canLoad()
    }
    
}
