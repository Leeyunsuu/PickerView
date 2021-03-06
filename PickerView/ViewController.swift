//
//  ViewController.swift
//  PickerView
//
//  Created by 이윤수 on 2021/02/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  let MAX_ARRAY_NUM = 6
  let PICKER_VIEW_COLUMN = 1
  var imageArray = [UIImage?]()
  var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg"]

  @IBOutlet var imagePicker: UIPickerView!
  @IBOutlet var imageName: UILabel!
  @IBOutlet var imageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    for i in 0 ..< MAX_ARRAY_NUM {
      let image = UIImage(named: imageFileName[i])
      imageArray.append(image)
    }
    imageName.text = imageFileName[0]
    imageView.image = imageArray[0]
  }
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return PICKER_VIEW_COLUMN
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return imageFileName.count
  }
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return imageFileName[row]
  }
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    imageName.text = imageFileName[row]
    imageView.image = imageArray[row]
  }
  

}

