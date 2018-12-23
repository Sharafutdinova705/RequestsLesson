//
//  PostDetailViewController.swift
//  NewProject
//
//  Created by Гузель on 04.10.2018.
//  Copyright © 2018 Гузель. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {
    
    @IBOutlet weak var textOfPostLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    
    var viewControllerUtils: ViewControllerUtils!
    
    var postObject: PostObject?
    
    // MARK: - Методы -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllerUtils = ViewControllerUtilsImplementation()
        filling()
    }
    
    // MARK: - Adding content and sharing -
    
    // заполнение данных из основного контроллера в новое окно детальной информации.
    func filling() {
        
        if postObject?.attachments?.first?.photoObject?.photoSizeObject?.first?.url?.count ?? 0 > 0 {
            contentImageView.downloaded(from: postObject?.attachments?.first?.photoObject?.photoSizeObject?.first?.url ?? "")
        }
        
        textOfPostLabel.text = postObject?.text
        likeCountLabel.text = String(postObject?.likes?.count ?? 0)
        commentCountLabel.text = String(postObject?.comments?.count ?? 0)
        
    }
    
    
    /// метод для шаринга с помощью UIActivityViewController
    ///
    /// - Parameter sender: any sender
    @IBAction func sharingAction(_ sender: Any) {
        viewControllerUtils.shareAction(textOfPostLabel: postObject?.text, currentViewController: self)
    }
}
