//
//  FunctionListVC.swift
//  TetViet
//
//  Created by PhuongTHN-D1 on 7/2/19.
//  Copyright © 2019 Rikkeisoft. All rights reserved.
//

import UIKit

class FunctionListVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblTitle: UILabel!
    
    // MARK: - Constant
//    private let functionsList: [FunctionType] = [.call, .messaging, .location, .direction, .note, .weather, .detection, .emergencyContact]
    var functionsList: [FunctionType] = []
    var titleNavi: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var textSpeech: [String] = []
        let title = titleNavi
        textSpeech.append(title)
        for item in functionsList {
            textSpeech.append(item.title)
        }
//        AudioService.shared.speech(with: textSpeech.joined())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    }
    
    override func viewDidLayoutSubviews() {
          tableView.isScrollEnabled = tableView.contentSize.height > tableView.frame.size.height
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

    private func setupViews() {
        lblTitle.text = titleNavi
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 56
        tableView.register(UINib(nibName: "FunctionListCell", bundle: nil), forCellReuseIdentifier: "FunctionListCell")
    }
}

extension FunctionListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return functionsList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FunctionListCell") as! FunctionListCell
        cell.configureCell(functionType: functionsList[indexPath.row])
        return cell
    }
}

extension FunctionListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowTapped = functionsList[indexPath.row]
        let vc = TutorialVC()
        switch rowTapped {
        case .call:
            vc.funcTionType = .call
        case .messaging:
            vc.funcTionType = .messaging
        case .location:
            vc.funcTionType = .location
        case .direction:
            vc.funcTionType = .direction
        case .note:
            vc.funcTionType = .note
        case .weather:
            vc.funcTionType = .weather
        case .detection:
            vc.funcTionType = .detection
        case .emergencyContact:
            vc.funcTionType = .emergencyContact
        case .nearHospital:
            vc.funcTionType = .nearHospital
        case .nearPhamercy:
            vc.funcTionType = .nearPhamercy
        case .exchangeRate:
            vc.funcTionType = .exchangeRate
        case .detectMoney:
            vc.funcTionType = .detectMoney
        case .detectObject:
            vc.funcTionType = .detectObject
        case .detectFlower:
            vc.funcTionType = .detectFlower
        case .detectFood:
            vc.funcTionType = .detectFood
        case .detectText:
            vc.funcTionType = .detectText
        case .detectFace:
            vc.funcTionType = .detectFace
        case .detectImage:
            vc.funcTionType = .detectImage
        case .detectColor:
            vc.funcTionType = .detectColor
        case .nearHotel:
            vc.funcTionType = .nearHotel
        case .nearRestaurent:
            vc.funcTionType = .nearRestaurent
        case .travelLocation:
            vc.funcTionType = .travelLocation
        case .translate:
            vc.funcTionType = .translate
        case .nearSupermarket:
            vc.funcTionType = .nearSupermarket
        case .nearGas:
            vc.funcTionType = .nearGas
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
