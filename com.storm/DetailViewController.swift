//
//  DetailViewController.swift
//  com.storm
//
// Created by Goutham Thota on 10/2/23.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  
  var selectedImage: String?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        // Do any additional setup after loading the view.
      if let selectedImage = selectedImage {
        imageView.image = UIImage(named: selectedImage)
      }
      
      navigationItem.largeTitleDisplayMode = .never
    }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }
  
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
