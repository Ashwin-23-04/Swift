import UIKit

class TestClass: NSObject, URLSessionDataDelegate{
    
    func urlSession(_ session: URLSession, didCompleteWithError error: Error?) {
        if let error = error {
            print("Session became invalid with error: \(error.localizedDescription)")
        } else {
            print("Session became invalid without error")
        }
    }
    
    func makeRequest() {
        let url = URL(string: "https://apple.co/3mrBHiy")!
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        let task = session.dataTask(with: url)
        task.resume()
    }
    
    func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
            print("Received redirect to URL: \(request.url?.absoluteString ?? "")")
            completionHandler(request)
        }
}

let test = TestClass()

test.makeRequest()
