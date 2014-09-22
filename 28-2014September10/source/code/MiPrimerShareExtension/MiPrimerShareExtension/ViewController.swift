//
//  ViewController.swift
//  MiPrimerShareExtension
//
//  Created by metodowhite on 10/09/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leImagen: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleShareImageTapped(sender: AnyObject) {
        shareContent(sharingText: "El dibujico", sharingImage: leImagen.image)
    }
    
    func shareContent(#sharingText: String?, sharingImage: UIImage?) {
        var itemsToShare = [AnyObject]()
        
        if let text = sharingText {
            itemsToShare.append(text)
        }
        
        if let image = sharingImage {
            itemsToShare.append(image)
        }
        
        let activityViewController = UIActivityViewController(activityItems: itemsToShare, applicationActivities: nil)
        presentViewController(activityViewController, animated: true, completion: nil)
    }
}















