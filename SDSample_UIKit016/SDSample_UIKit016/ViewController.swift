//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Fields
    
    private var scrollView: UIScrollView!

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // ScrollViewの設定
        self.setupScrollView()
    }
    
    /// ScrollViewの設定
    private func setupScrollView() {
        self.scrollView = UIScrollView(frame: self.view.frame)
        
        let imageView = UIImageView(frame: self.scrollView.frame)
        imageView.contentMode = .topLeft
        
        let image = UIImage(named: "image")
        imageView.image = image
        
        self.scrollView.addSubview(imageView)
        
        scrollView.contentSize = CGSize(width: (image?.size.width)!,
                                        height: (image?.size.height)!)
        
        self.view.addSubview(self.scrollView)
    }
}

