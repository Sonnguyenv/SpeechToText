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
    let noteType: [NoteType] = [.creatNote, .searchNote, .recentlyNote, .listenNote, .fixNote, .deleteNote]
    let weatherType: [WeatherType] = [.weather, .weatherNext]
    let detectionType: [DetectionContentType] = [.money, .items, .text, .flower, .food]
    let emergencyContact: [EmergencyType] = [.rescue, .ambulance, .fire, .police, .create, .emergencyCall]

    //MARK: - Variables
    var funcTionType = FunctionType.call
    var textSpeech: [String] = []
    
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
    }
    
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
            case .note:
                return noteType.count
            case .weather:
                return weatherType.count
            case .detection:
                return detectionType.count
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
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionTableViewCell") as! DescriptionTableViewCell
            switch funcTionType {
            case .note:
                cell.title.text = noteType[indexPath.row].title
                cell.decription.text = noteType[indexPath.row].description
            case .weather:
                cell.title.text = weatherType[indexPath.row].title
                cell.decription.text = weatherType[indexPath.row].description
            case .detection:
                cell.title.text = detectionType[indexPath.row].title
                cell.decription.text = detectionType[indexPath.row].description
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
                case .note:
                    AudioService.shared.speak(with: noteType[indexPath.row].description)
                case .weather:
                    AudioService.shared.speak(with: weatherType[indexPath.row].description)
                case .emergencyContact:
                    AudioService.shared.speak(with: emergencyContact[indexPath.row].description)
                case .detection:
                    AudioService.shared.speak(with: detectionType[indexPath.row].description)
                default:
                    AudioService.shared.speak(with: funcTionType.content)
                }
            }
        }
    }
}
