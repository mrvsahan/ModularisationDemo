import TrackingInterface

struct TrackingManager: TrackingInterface {
    func track(event: Event, properties: [String : AnyObject]) {
        #if DEBUG
        print("\n Event: \(event), properties: \(properties)")
        #endif
    }
}
