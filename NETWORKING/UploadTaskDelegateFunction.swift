//
//  UploadTaskDelegateFunction.swift
//  MovieManagerConsoleApplication
//
//  Created by ashwin-pt6735 on 07/03/23.
//

import Foundation

class UploadFile: NSObject, URLSessionTaskDelegate{
    func uploadImageToDrive(fileURL: URL){
        let url = URL(string: "https://www.googleapis.com/upload/drive/v3/files?uploadType=media")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer ya29.a0AVvZVsp_9GSkWxGwcjRn-FPylGRnPhrFGIzP-Pkpiw6IyWjcTRIcQ69FanDGeHr6wgWAqjrn79EEEpmrT0CeBozYBDcWGWt74dEx7hbfJJxvaAnyAGNxuf8kuY2hNVGqteO6vtyfDXYBr7lZCNVtMKmw8sxdNzsaCgYKAeISARESFQGbdwaIcPP5BfWCx2yMoJNTaA096g0166", forHTTPHeaderField: "Authorization")
        let urlsession = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        print(fileURL)
        print(request)
        print("URL Session: ", urlsession)
        let uploadTask = urlsession.uploadTask(with: request, fromFile: fileURL)
        print("Upload Task: ", uploadTask)
        uploadTask.resume()
    }
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData byteSent: Int64, totalBytesSent totalBytesSend: Int64, totalBytesExpectedToSend: Int64){
        print("DidSendBodyData : \(byteSent)")
        print("Total Bytes Send : \(totalBytesSend)")
        print("Total Bytes Expected to send: \(totalBytesExpectedToSend)")
        
        let progress = Float(totalBytesSend) / Float(totalBytesExpectedToSend)
        print(progress)
        print("Uploading Progress - \(String(format: "%.0f%", progress*100))")
    }
}

//var fileURL = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask)[0].appendingPathComponent("TomAndJerry.jpg")
var fileURL = URL(string: "/Users/ashwin-pt6735/Downloads/TomAndJerry.jpg")
var uploadFile = UploadFile()
uploadFile.uploadImageToDrive(fileURL: fileURL!)
sleep(15)
