
import SwiftUI

public protocol TrackUIModelProtocol: Equatable, Hashable, Identifiable {
    var trackID: UUID { get }
    var trackCensoredName: String { get }
    var artist: String { get }
    var previewUrl: String { get }
    var trackImage: String? { get }
}

public class TrackUIModel: TrackUIModelProtocol {
    public let trackID: UUID
    public let trackCensoredName: String
    public let artist: String
    public let previewUrl: String
    public let trackImage: String?

    public init(trackID: UUID, trackCensoredName: String, artist: String, previewUrl: String, trackImage: String?) {
        self.trackID = trackID
        self.trackCensoredName = trackCensoredName
        self.artist = artist
        self.previewUrl = previewUrl
        self.trackImage = trackImage
    }

    public static func == (lhs: TrackUIModel, rhs: TrackUIModel) -> Bool {
        return lhs.trackID == rhs.trackID
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(trackID.hashValue)
    }
}

public struct TrackDetail: EnvironmentKey {
    public static let defaultValue: TrackUIModel? = nil
}

extension EnvironmentValues {
    public var trackDetailList: TrackUIModel? {
        get {
            print("Track:", self[TrackDetail.self])
            return self[TrackDetail.self]
        }
        set {
            print("TrackSet:", newValue)
            return self[TrackDetail.self] = newValue
        }
    }
}
