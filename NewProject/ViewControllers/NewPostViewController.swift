//
//  NewPostViewController.swift
//  NewProject
//
//  Created by Гузель on 23/12/2018.
//  Copyright © 2018 Гузель. All rights reserved.
//

import UIKit

class NewPostViewController: UIViewController {
    
    var mainService: MainService!
    
    @IBOutlet weak var messageTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainService = MainServiceImplementation()
        
    }
    
    @IBAction func sendButtonAction(_ sender: UIButton) {
        
        if messageTextView.text.count > 0 {
            mainService.sendPost(message: messageTextView.text, ownerId: nil) { [weak self] (result) in
                switch result {
                case .success():
                    if self != nil {
                        DispatchQueue.main.async {
                             _ = self?.navigationController?.popViewController(animated: true)
                        }
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
