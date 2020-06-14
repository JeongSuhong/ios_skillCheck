//
//  DocumentViewController.swift
//  Test_SkillCheck
//
//  Created by Suhong Jeong on 2020/06/14.
//  Copyright © 2020 Suhong Jeong. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController {
    
    @IBOutlet weak var documentNameLabel: UILabel!
    
    var document: UIDocument?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Access the document
        document?.open(completionHandler: { (success) in
            if success {
                // Display the content of the document, e.g.:
                self.documentNameLabel.text = self.document?.fileURL.lastPathComponent
            } else {
                // Make sure to handle the failed import appropriately, e.g., by presenting an error message to the user.
            }
        })
    }
    
    @IBAction func dismissDocumentViewController() {
        dismiss(animated: true) {
            self.document?.close(completionHandler: nil)
        }
    }
}
