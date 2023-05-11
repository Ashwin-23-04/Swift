//
//  ViewController.swift
//  DownloadDelegateResumePauseFuncExample
//
//  Created by ashwin-pt6735 on 07/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var downloader: Downloader?
    var resumeData: Data?

    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func downloadButton(_ sender: Any) {
        downloader = Downloader(urlString: "https://s13.gotofiles.online/download/505431fcd283daa4567746d2e8329be9/1678188875/p/Tamil%202023%20Movies/Thunivu%20(2023)/Thunivu%20(Original)/Thunivu%20(720p%20HD)/Moviesda.Mobi%20-%20Thunivu%202023%20Original%20720p%20HD.mp4")
        downloader?.downloadStart()
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        downloader?.pauseDownload()
    }
    
    @IBAction func resumeButton(_ sender: Any) {
        downloader?.resumeDownload()
    }
}

class Downloader: NSObject, URLSessionDownloadDelegate {
    var url: URL
    
    lazy var session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
    lazy var task: URLSessionDownloadTask = session.downloadTask(with: url)
    var resumeData: Data? {
        didSet {
            print("data has been entered")
        }
    }
    var data: Data?
    
    var isDownloading: Bool = false
    var isPaused: Bool = false
    
    init(urlString: String) {
        self.url = URL(string: urlString)!
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo tempURL: URL) {
        //print("called")
        do {
            let documentsURL = try
            FileManager.default.url(for: .documentDirectory,
                                        in: .userDomainMask,
                                        appropriateFor: nil,
                                        create: true)
            let savedURL = documentsURL.appendingPathComponent(tempURL.lastPathComponent)
            try FileManager.default.moveItem(at: tempURL, to: savedURL)
            print("File is get saved .......")
            print(tempURL)
            print(savedURL)
        } catch {
            print ("file error: \(error)")
        }
    }
    func downloadStart() {
        print("function is starting")
        task.resume()
        isDownloading = true
        print("function ended")
                
    }
    
    func pauseDownload() {
        isDownloading = false
        isPaused = true
        task.cancel(byProducingResumeData: {
            data in
            print(data)
            self.resumeData = data
        })
        
    }
    
    func cancelDownload() {
        task.cancel()
    }
    
    func resumeDownload() {
        if isPaused == true, resumeData != nil {
            session.downloadTask(withResumeData: resumeData!).resume()
            print("resume triggered")
            isPaused = false
            isDownloading = true
            self.resumeData = nil
        } else {
            print("resume data is zero")
            self.session.downloadTask(with: url).resume()
            
        }
    }
    
    func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didWriteData bytesWritten: Int64,
                    totalBytesWritten: Int64,
                    totalBytesExpectedToWrite: Int64) {
            let percentageDownloaded = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)
            print("Downloading: ", ceil(percentageDownloaded*1000)/10,"%")
    }
}
