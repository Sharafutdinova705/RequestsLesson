//
//  ViewControllerUtils.swift
//  NewProject
//
//  Created by Гузель on 29.10.2018.
//  Copyright © 2018 Гузель. All rights reserved.
//

import UIKit

protocol ViewControllerUtils {
    
    /// метод для шаринга с помощью UIActivityViewController
    ///
    /// - Parameters:
    ///   - textOfPostLabel: Текст поста
    ///   - currentViewController: Контроллер NewsViewController
    func shareAction(textOfPostLabel: String?, currentViewController: UIViewController)
}

class ViewControllerUtilsImplementation: ViewControllerUtils {
    
    func shareAction(textOfPostLabel: String?, currentViewController: UIViewController) {
        var defaultMessage = "default"
        if textOfPostLabel != nil {
            defaultMessage = textOfPostLabel!
        }
        let activityController = UIActivityViewController(activityItems: [defaultMessage], applicationActivities: nil)
        currentViewController.present(activityController, animated: true, completion: nil)
    }
}
