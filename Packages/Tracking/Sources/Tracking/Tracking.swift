import TrackingInterface

struct TrackingManager: TrackingProtocol {
    func track(event: TrackingInterface.Event, properties: [String : AnyObject]) {
        #if DEBUG
        print("\n Event: \(event), properties: \(properties)")
        #endif
    }
}
