import Alamofire
import Foundation
import NetworkInterface

typealias NetworkCompletionHandler = (AFDataResponse<Data?>) -> Void

enum CustomError: Error {
    case urlMalformed
    case badRequest
    case decodingError
}

final class NetworkManager: NetworkManagerProtocol {
    
    private let session: Session
    
     init(session: Session = Session(interceptor: NetworkInterceptor())) {
        self.session = session
    }
    
    func fetch<T: Decodable>(_ request: Endpoint, type: T.Type) async throws -> T {
        guard let url = try request.asURL() else {
            throw CustomError.urlMalformed
        }

        return try await withUnsafeThrowingContinuation { continuation in
            self.session.request(url).validate().responseDecodable(of: T.self,
                                                                   completionHandler: { response in
                switch response.result {
                case .success(let decodedResponse):
                    continuation.resume(returning: decodedResponse)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            })
        }
    }
}
