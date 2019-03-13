//
//  CustomTableController.swift
//  MyOwnExt
//
//  Created by Komkrit Siratitanan on 11/3/2562 BE.
//

import Foundation
import UIKit

public class CustomTableController: UIView, UITableViewDelegate, UITableViewDataSource {
    
    public let sCustomCell = "CustomCell"
    public var iNumRow: Int!
    public weak var oCustomView: CustomView!
    
    public lazy var mTableView: UITableView = {
        let mTableView = UITableView()
        mTableView.delegate = self
        mTableView.dataSource = self
        mTableView.backgroundColor = UIColor.red
        mTableView.separatorStyle = .none
        mTableView.layer.cornerRadius = 10.0
        return mTableView
    }()
    
    public convenience override init(frame: CGRect) {
        self.init(frame: frame)
        self.iNumRow = 10
        if #available(iOS 9.0, *) {
            self.setupView()
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(iOS 9.0, *)
    public func setupView() {
        self.mTableView.register(customCell.self, forCellReuseIdentifier: self.sCustomCell)
        self.addSubview(self.mTableView)
        self.mTableView.translatesAutoresizingMaskIntoConstraints = false
        self.mTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.mTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16.0).isActive = true
        self.mTableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.mTableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    private func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.iNumRow
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.mTableView.dequeueReusableCell(withIdentifier: self.sCustomCell) as! customCell
        cell.mLabel.text = "\(indexPath.row)"
        
        return cell
    }
    
    private func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82.0
    }
    
    private func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82.0
    }
    
    private func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //        print("scroll: \(scrollView)")
        //        print(self.oCustomView.ePosition)
        //        if self.oCustomView.ePosition == .mid {
        //            self.mTableView.isScrollEnabled = false
        //            self.mTableView.bounces = false
        //        } else {
        //            self.mTableView.isScrollEnabled = true
        //            self.mTableView.bounces = true
        //        }
    }
    
}

class customCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public convenience override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        if #available(iOS 9.0, *) {
            self.setupView()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var mView: UIView = {
        let mView = UIView()
        mView.backgroundColor = .yellow
        return mView
    }()
    
    public var mImg: UIImageView = {
        let mImg = UIImageView()
        mImg.backgroundColor = .blue
        return mImg
    }()
    
    public var mLabel: UILabel = {
        let mLabel = UILabel()
        
        return mLabel
    }()
    
    @available(iOS 9.0, *)
    public func setupView() {
        self.addSubview(self.mView)
        self.mView.addSubview(self.mImg)
        self.mView.addSubview(self.mLabel)
        
        self.mView.translatesAutoresizingMaskIntoConstraints = false
        self.mView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.mView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.mView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.mView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.mImg.translatesAutoresizingMaskIntoConstraints = false
        self.mImg.widthAnchor.constraint(equalToConstant: 50.0).isActive = true
        self.mImg.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        self.mImg.centerYAnchor.constraint(equalTo: self.mView.centerYAnchor).isActive = true
        self.mImg.leftAnchor.constraint(equalTo: self.mView.leftAnchor, constant: 8.0).isActive = true
        
        self.mLabel.translatesAutoresizingMaskIntoConstraints = false
        self.mLabel.leftAnchor.constraint(equalTo: self.mImg.rightAnchor, constant: 8.0).isActive = true
        self.mLabel.rightAnchor.constraint(equalTo: self.mView.rightAnchor, constant: -16.0).isActive = true
        self.mLabel.centerYAnchor.constraint(equalTo: self.mView.centerYAnchor).isActive = true
        self.mLabel.backgroundColor = .green
    }
}
