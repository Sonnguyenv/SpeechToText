//
//  CallTutorialVC.swift
//  Develop
//
//  Created by SonNV-D1 on 1/13/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import UIKit
import AVFoundation

class TutorialVC: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Constant
    let noteType: [NoteType] = [.creatNote, .searchNote, .recentlyNote, .listenNote, .fixNote, .deleteNote, .contentNote, .locationNote, .timeNote]
    let weatherType: [WeatherType] = [.weather, .weatherNext]
    let detectionType: [DetectionContentType] = [.money, .items, .text, .flower, .food]
    let emergencyContact: [EmergencyType] = [.rescue, .ambulance, .fire, .police, .create, .emergencyCall]
    let callType: [CallType] = [.callYamada, .callTanaka]
    let messType: [MessageType] = [.messYamada, .messTanaka]
    let detectMoney: [DetectMoneyType] =  [.paper, .coin]
    let translateType: [TranslateType] = [.enlish, .vietnamese]
    
    //MARK: - Variables
    var funcTionType = FunctionType.call
    var textSpeech: [String] = []
    var textContent = ""
    
    // MARK: - Life Cycle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AudioService.shared.stopAudio()
    }
    
    override func viewDidLayoutSubviews() {
       tableView.isScrollEnabled = tableView.contentSize.height > tableView.frame.size.height
    }
    
    private func setupView() {
        labelTitle.text = funcTionType.title
        tableView.register(UINib(nibName: "ImageViewCell", bundle: nil), forCellReuseIdentifier: "ImageViewCell")
        tableView.register(UINib(nibName: "DescriptionTableViewCell", bundle: nil), forCellReuseIdentifier: "DescriptionTableViewCell")
        tableView.register(UINib(nibName: "TextCancelCell", bundle: nil), forCellReuseIdentifier: "TextCancelCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    // Action
    @IBAction func buttonBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension TutorialVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default :
            switch funcTionType {
            case .call:
                return callType.count
            case .messaging:
                return messType.count
            case .note:
                return noteType.count
            case .weather:
                return weatherType.count
            case .detection:
                return detectionType.count
            case .detectMoney:
                return detectMoney.count
            case .translate:
                return translateType.count
            case .emergencyContact:
                return emergencyContact.count
            default:
                return 1
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageViewCell") as! ImageViewCell
            cell.imageCell.image = funcTionType.image
            cell.textData = {[weak self] text in
                self?.textContent = text
            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionTableViewCell") as! DescriptionTableViewCell
            switch funcTionType {
            case .call:
                cell.title.text = callType[indexPath.row].title
                cell.decription.text = ""
            case .messaging:
                cell.title.text = messType[indexPath.row].title
                cell.decription.text = ""
            case .note:
                cell.title.text = noteType[indexPath.row].title
                cell.decription.text = noteType[indexPath.row].description
            case .weather:
                cell.title.text = weatherType[indexPath.row].title
                cell.decription.text = weatherType[indexPath.row].description
            case .detection:
                cell.title.text = detectionType[indexPath.row].title
                cell.decription.text = detectionType[indexPath.row].description
            case .detectMoney:
                cell.title.text = ""
                cell.decription.text = detectMoney[indexPath.row].description
            case .translate:
                cell.title.text = ""
                cell.decription.text = translateType[indexPath.row].description
            case .emergencyContact:
                cell.title.text = emergencyContact[indexPath.row].title
                cell.decription.text = emergencyContact[indexPath.row].description
            default:
                cell.configureCell(functionType: funcTionType)
            }
            return cell
        }
    }
}

extension TutorialVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !AudioService.shared.isSpeaking() {
            switch indexPath.section {
            case 0:
                return
            default:
                switch funcTionType {
                case .call:
                    let textSpeech = textContent + " " + callType[indexPath.row].title
                    AudioService.shared.speak(with: textSpeech)
                case .messaging:
                    let textSpeech = textContent + " " + messType[indexPath.row].title
                    AudioService.shared.speak(with: textSpeech)
                case .note:
                    let textSpeech = textContent + " " + noteType[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                case .weather:
                    let textSpeech = textContent + " " + weatherType[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                case .emergencyContact:
                    let textSpeech = textContent + " " + emergencyContact[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                case .detection:
                    let textSpeech = textContent + " " + detectionType[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                case .detectMoney:
                    let textSpeech = textContent + " " + detectMoney[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                case .translate:
                    let textSpeech = textContent + " " + translateType[indexPath.row].description
                    AudioService.shared.speak(with: textSpeech)
                default:
                    let textSpeech = textContent + " " + funcTionType.content
                    AudioService.shared.speak(with: textSpeech)
                }
            }
        }
    }
}
