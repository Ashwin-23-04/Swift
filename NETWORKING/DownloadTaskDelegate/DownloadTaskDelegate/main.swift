import Foundation


class DownloadFile: NSObject, URLSessionTaskDelegate, URLSessionDownloadDelegate{
    func downloadImageFromDrive(){
        let imageURl = URL(string: "https://www.googleapis.com/drive/v3/files/1VXTgZ5NDmwqA5J2oWM-IchrQLIV_zWUj/alt=media")
//        var component = URLComponents()
//        component.scheme = "https"
//        component.host = "www.googleapis.com"
//        component.path = "/drive/v3/files/1ebeNWAPHAb22lORHh1AXDEFF88gpaTFd"
//        component.query = "alt=media"
//        print(component.url!)
        var request = URLRequest(url: imageURl!)
        request.httpMethod = "GET"
        request.setValue("Bearer ya29.a0AVvZVsoYu-LwwBDr0yjDgMseWDGQ95EC2bU-OXyVfQJdIHxBuWhw-TEljQpjr05me0iF4MZUZvJTZUIUT0oC_FUkCg50dGbLIyU0KV-O-yT45_KE5Ift0ZnrIW0sfOm95j7XZJQ6Dk33dcSQsnt2Y6acClKclf4aCgYKAcESARESFQGbdwaINPIBRoel9gUWWo55xqVq1g0166", forHTTPHeaderField: "Authorization")
        print(imageURl)
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        print("here")
        print(session)
        let task = session.downloadTask(with: request)
        print("download started")
        task.resume()
    }

    func urlSession( _ session: URLSession,downloadTask: URLSessionDownloadTask,didFinishDownloadingTo location: URL){
        let savedURL = URL(string: "/Users/ashwin-pt6735/Downloads/WALLPAPER/")!
        do {
            let documentsURL = try FileManager.default.url(for: .documentDirectory,in: .userDomainMask,appropriateFor: nil, create: true)
            let savedURL = documentsURL.appendingPathComponent(location.lastPathComponent)
            try FileManager.default.moveItem(at: location, to: savedURL)
            print("File is downloaded Successfully")
        }catch{
            print("file error : \(error)")
        }
    }

    func urlSession(_ session: URLSession,downloadTask: URLSessionDownloadTask,didWriteData bytesWritten: Int64,totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        print(bytesWritten,":",totalBytesWritten,":",totalBytesExpectedToWrite )
        let percentageDownloaded = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)
        print("Downloading: ", ceil(percentageDownloaded*1000)/10,"%")
    }
    
}

let downloadFile = DownloadFile()
downloadFile.downloadImageFromDrive()
sleep(10)
