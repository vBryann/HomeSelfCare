//
//  PickerTableViewCell.swift
//  Byrd
//
//  Created by Vitor Bryan on 05/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import UIKit

class PickerTableViewCell: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    static let indentifier = "PickerTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "PickerTableViewCell", bundle: nil)
    }
    var isObserving = false
    let minutes = Array(0...59)
    
    @IBOutlet weak var contentPicker: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
    }
    
    class var expandedHeight: CGFloat {get { return 200}}
    class var defaultHeight: CGFloat {get {return 44}}
    
    func checkHeight(){
        pickerView.isHidden = (frame.height < PickerTableViewCell.expandedHeight)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return minutes.count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        let pickerLabel = UILabel()
        var titleData = ""
        titleData = "\(minutes[row])"
        pickerLabel.text = titleData
        return pickerLabel
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.width / 3
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.contentPicker.text = "\(component)\(row)"
    }
    
    
    func watchFrameChanges() {
        if !isObserving {
            addObserver(self, forKeyPath: "frame", options: [NSKeyValueObservingOptions.new, NSKeyValueObservingOptions.initial], context: nil)
            isObserving = true;
        }
    }
    func ignoreFrameChanges() {
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false;
        }
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "frame" {
            checkHeight()
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
