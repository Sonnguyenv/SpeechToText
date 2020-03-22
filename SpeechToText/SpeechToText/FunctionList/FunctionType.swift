//
//  FunctionType.swift
//  TetViet
//
//  Created by PhuongTHN-D1 on 7/2/19.
//  Copyright © 2019 Rikkeisoft. All rights reserved.
//

import Foundation
import UIKit

enum FunctionType {
    case call
    case messaging
    case location
    case direction
    case note
    case weather
    case detection
    case emergencyContact
    case nearHospital
    case nearPhamercy
    case exchangeRate
    case detectMoney
    case detectObject
    case detectFlower
    case detectFood
    case detectText
    case detectFace
    case detectImage
    case detectColor
    case nearHotel
    case nearRestaurent
    case travelLocation
    case translate
    case nearSupermarket
    case nearGas
    
    var title: String {
        switch self {
        case .call:
            return "tutorial_call".localized
        case .messaging:
            return "tutorial_messages".localized
        case .location:
            return "tutorial_location".localized
        case .direction:
            return "tutorial_direction".localized
        case .note:
            return "tutorial_note".localized
        case .weather:
            return "tutorial_weather".localized
        case .detection:
            return "tutorial_detection".localized
        case .emergencyContact:
            return "tutorial_emergency".localized
        case .nearHospital:
            return "t_content_near_hopital".localized
        case .nearPhamercy:
            return "t_content_near_phamercy".localized
        case .exchangeRate:
            return "t_content_exchange_rate".localized
        case .detectMoney:
            return "t_detect_money".localized
        case .detectObject:
            return "t_detect_object".localized
        case .detectFlower:
            return "t_detect_flower".localized
        case .detectFood:
            return "t_detect_food".localized
        case .detectText:
            return "t_detect_text".localized
        case .detectFace:
            return "t_detect_face".localized
        case .detectImage:
            return "t_detect_image".localized
        case .detectColor:
            return "t_detect_color".localized
        case .nearHotel:
            return "t_content_near_hotel".localized
        case .nearRestaurent:
            return "t_content_near_restaurant".localized
        case .travelLocation:
            return "t_content_travel_location".localized
        case .translate:
            return "t_content_translate".localized
        case .nearSupermarket:
            return "t_content_near_supermarket".localized
        case .nearGas:
            return "t_content_near_gas".localized
        }
    }
    
    var functionTitile: String {
        switch self {
        case .call:
            return "title_call".localized
        case .messaging:
            return "title_messaging".localized
        case .location:
            return "f_title_location".localized
        case .direction:
            return "title_direction".localized
        case .note:
            return "f_title_note".localized
        case .weather:
            return "title_weather".localized
        case .detection:
            return "f_title_detection".localized
        case .emergencyContact:
            return "f_title_emergency".localized
        case .nearHospital:
            return "t_content_near_hopital".localized
        case .nearPhamercy:
            return "t_content_near_phamercy".localized
        case .exchangeRate:
            return "t_content_exchange_rate".localized
        case .detectMoney:
            return "t_detect_money".localized
        case .detectObject:
            return "t_detect_object".localized
        case .detectFlower:
            return "t_detect_flower".localized
        case .detectFood:
            return "t_detect_food".localized
        case .detectText:
            return "t_detect_text".localized
        case .detectFace:
            return "t_detect_face".localized
        case .detectImage:
            return "t_detect_image".localized
        case .detectColor:
            return "t_detect_color".localized
        case .nearHotel:
            return "t_content_near_hotel".localized
        case .nearRestaurent:
            return "t_content_near_restaurant".localized
        case .travelLocation:
            return "t_content_travel_location".localized
        case .translate:
            return "t_content_translate".localized
        case .nearSupermarket:
            return "t_content_near_supermarket".localized
        case .nearGas:
            return "t_content_near_gas".localized
        }
    }
    
    var description: String {
        switch self {
        case .call:
            return CallType.callTanaka.title
        case .messaging:
            return "t_description_call".localized
        case .location:
            return "t_description_call".localized
        case .direction:
            return "t_description_call".localized
        case .note:
            return NoteType.creatNote.title
        case .weather:
            return WeatherType.weather.title
        case .detection:
            return DetectionContentType.money.title
        case .emergencyContact:
            return "t_description_emergency".localized
        case .nearHospital:
            return "t_content_near_hopital".localized
        case .nearPhamercy:
            return "t_content_near_phamercy".localized
        case .exchangeRate:
            return "t_content_exchange_rate".localized
        case .detectMoney:
            return "t_detect_money".localized
        case .detectObject:
            return "t_detect_object".localized
        case .detectFlower:
            return "t_detect_object".localized
        case .detectFood:
            return "t_detect_food".localized
        case .detectText:
            return "t_detect_text".localized
        case .detectFace:
            return "t_detect_face".localized
        case .detectImage:
            return "t_detect_image".localized
        case .detectColor:
            return "t_detect_color".localized
        case .nearHotel:
            return "t_content_near_hotel".localized
        case .nearRestaurent:
            return "t_content_near_restaurant".localized
        case .travelLocation:
            return "t_content_travel_location".localized
        case .translate:
            return "t_content_translate".localized
        case .nearSupermarket:
            return "t_content_near_hopital".localized
        case .nearGas:
            return "t_content_near_hopital".localized
        }
    }
    
    var content: String {
        switch self {
        case .call:
            return "t_content_call".localized
        case .messaging:
            return "t_content_messages".localized
        case .location:
            return "t_content_location".localized
        case .direction:
            return "t_content_direction".localized
        case .note:
            return NoteType.creatNote.description
        case .weather:
            return WeatherType.weather.description
        case .detection:
            return DetectionContentType.money.description
        case .emergencyContact:
            return EmergencyType.rescue.description
        case .nearHospital:
            return "t_content_near_hopital".localized
        case .nearPhamercy:
            return "t_content_near_phamercy".localized
        case .exchangeRate:
            return "t_content_exchange_rate".localized
        case .detectMoney:
            return DetectMoneyType.paper.description
        case .detectObject:
            return "t_detect_object".localized
        case .detectFlower:
            return "t_detect_flower".localized
        case .detectFood:
            return "t_detect_food".localized
        case .detectText:
            return "t_detect_text".localized
        case .detectFace:
            return "t_detect_face".localized
        case .detectImage:
            return "t_detect_image".localized
        case .detectColor:
            return "t_detect_color".localized
        case .nearHotel:
            return "t_content_near_hotel".localized
        case .nearRestaurent:
            return "t_content_near_restaurant".localized
        case .travelLocation:
            return "t_content_travel_location".localized
        case .translate:
            return "t_content_translate".localized
        case .nearSupermarket:
            return "t_content_near_supermarket".localized
        case .nearGas:
            return "t_content_near_gas".localized
        }
    }

    var icon: UIImage? {
        switch self {
        case .call:
            return UIImage(named: "f_call2")
        case .messaging:
            return UIImage(named: "f_messaging2")
        case .location:
            return UIImage(named: "f_location2")
        case .direction:
            return UIImage(named: "f_direction2")
        case .note:
            return UIImage(named: "f_note2")
        case .weather:
            return UIImage(named: "f_weather2")
        case .detection:
            return UIImage(named: "f_detection2")
        case .emergencyContact:
            return UIImage(named: "6_2_3")
        case .nearHospital:
            return UIImage(named: "6_4_1")
        case .nearPhamercy:
            return UIImage(named: "6_4_2")
        case .exchangeRate:
            return UIImage(named: "6_5_3")
        case .detectMoney:
            return UIImage(named: "6_6_1")
        case .detectObject:
            return UIImage(named: "6_6_2")
        case .detectFlower:
            return UIImage(named: "6_6_3")
        case .detectFood:
            return UIImage(named: "6_6_4")
        case .detectText:
            return UIImage(named: "6_6_5")
        case .detectFace:
            return UIImage(named: "6_6_6")
        case .detectImage:
            return UIImage(named: "6_6_7")
        case .detectColor:
            return UIImage(named: "6_6_8")
        case .nearHotel:
            return UIImage(named: "6_7_1")
        case .nearRestaurent:
            return UIImage(named: "6_7_2")
        case .travelLocation:
            return UIImage(named: "6_7_3")
        case .translate:
            return UIImage(named: "6_7_4")
        case .nearSupermarket:
            return UIImage(named: "6_7_5")
        case .nearGas:
            return UIImage(named: "6_7_6")
        }
    }
    
    var image: UIImage? {
        switch self {
        case .call:
            return UIImage(named: "t_phone")
        case .messaging:
            return UIImage(named: "t_message")
        case .location:
            return UIImage(named: "t_location")
        case .direction:
            return UIImage(named: "t_direction")
        case .note:
            return UIImage(named: "t_note")
        case .weather:
            return UIImage(named: "t_weather")
        case .detection:
            return UIImage(named: "t_detection")
        case .emergencyContact:
            return UIImage(named: "6_2_3")
        case .nearHospital:
            return UIImage(named: "6_4_1")
        case .nearPhamercy:
            return UIImage(named: "6_4_2")
        case .exchangeRate:
            return UIImage(named: "6_5_3")
        case .detectMoney:
            return UIImage(named: "6_6_1")
        case .detectObject:
            return UIImage(named: "6_6_2")
        case .detectFlower:
            return UIImage(named: "6_6_3")
        case .detectFood:
            return UIImage(named: "6_6_4")
        case .detectText:
            return UIImage(named: "6_6_5")
        case .detectFace:
            return UIImage(named: "6_6_6")
        case .detectImage:
            return UIImage(named: "6_6_7")
        case .detectColor:
            return UIImage(named: "6_6_8")
        case .nearHotel:
            return UIImage(named: "6_7_1")
        case .nearRestaurent:
            return UIImage(named: "6_7_2")
        case .travelLocation:
            return UIImage(named: "6_7_3")
        case .translate:
            return UIImage(named: "6_7_4")
        case .nearSupermarket:
            return UIImage(named: "6_7_5")
        case .nearGas:
            return UIImage(named: "6_7_6")
        }
    }
}

enum CategoryFunctionType {
    case contact
    case traffic
    case medical
    case utilities
    case identify
    case travel
    
    var listFunction: [FunctionType] {
        switch self {
        case .contact:
            return [.call, .messaging, .emergencyContact]
        case .traffic:
            return [.location, .direction]
        case .medical:
            return [.nearHospital, .nearPhamercy]
        case .utilities:
            return [.note, .weather, . exchangeRate]
        case .identify:
            return [.detectMoney, .detectObject, .detectFlower, .detectFood, .detectText, .detectFace, .detectImage, .detectColor]
        case .travel:
            return [.nearHotel, .nearRestaurent, .travelLocation, .translate, .nearSupermarket, .nearGas]
        }
    }
    
    var title: String {
        switch self {
        case .contact:
            return "t_title_contact".localized
        case .traffic:
            return "t_title_traffic".localized
        case .medical:
            return "t_title_medical".localized
        case .utilities:
            return "t_title_utilities".localized
        case .identify:
            return "t_title_identify".localized
        case .travel:
            return "t_title_travel".localized
        }
    }
    
    static var listCategory: [CategoryFunctionType] = [.contact, .traffic, .medical, .utilities, .identify, .travel]
    
    var image: UIImage? {
        switch self {
        case .contact:
            return UIImage(named: "6_1_1")
        case .traffic:
            return UIImage(named: "6_1_2")
        case .medical:
            return UIImage(named: "6_1_3")
        case .utilities:
            return UIImage(named: "6_1_4")
        case .identify:
            return UIImage(named: "6_1_5")
        case .travel:
            return UIImage(named: "6_1_6")
        }
    }
}

enum NoteType {
    case creatNote
    case searchNote
    case recentlyNote
    case listenNote
    case fixNote
    case deleteNote
    
    var title: String {
        switch self {
        case .creatNote:
            return "n_title_creat".localized
        case .searchNote:
            return "n_title_search".localized
        case .recentlyNote:
            return "n_title_recently".localized
        case .listenNote:
            return "n_title_listen".localized
        case .fixNote:
            return "n_title_fix".localized
        case .deleteNote:
            return "n_title_delete".localized
        }
    }
    
    var description: String {
        switch self {
        case .creatNote:
            return "n_decription_title_creat".localized
        case .searchNote:
            return "n_decription_title_search".localized
        case .recentlyNote:
            return "n_decription_title_recently".localized
        case .listenNote:
            return "n_decription_title_listen".localized
        case .fixNote:
            return "n_decription_title_fix".localized
        case .deleteNote:
            return "n_decription_title_delete".localized
        }
    }
}

enum WeatherType {
    case weather
    case weatherNext
    
    var title: String {
        switch self {
        case .weather:
            return "w_title_weather".localized
        case .weatherNext:
            return "w_title_weatherNext".localized
        }
    }
    
    var description: String {
        switch self {
        case .weather:
            return "w_decription_title_weather".localized
        case .weatherNext:
            return "w_decription_title_weatherNext".localized
        }
    }
}

enum DetectionContentType {
    case money
    case items
    case text
    case flower
    case food
    
    var title: String {
        switch self {
        case .money:
            return "d_title_money".localized
        case .items:
            return "d_title_items".localized
        case .text:
            return "d_title_text".localized
        case .flower:
            return "d_title_flower".localized
        case .food:
            return "d_title_food".localized
        }
    }
    
    var description: String {
        switch self {
        case .money:
            return "d_decription_title_money".localized
        case .items:
            return "d_decription_title_items".localized
        case .text:
            return "d_decription_title_text".localized
        case .flower:
            return "d_decription_title_flower".localized
        case .food:
            return "d_decription_title_food".localized
        }
    }
}

enum EmergencyType {
    case rescue
    case ambulance
    case fire
    case police
    case create
    case emergencyCall
    
    var title: String {
        switch self {
        case .rescue:
            return "e_title_rescue".localized
        case .ambulance:
            return "e_title_ambulance".localized
        case .fire:
            return "e_title_fire".localized
        case .police:
            return "e_title_police".localized
        case .create:
            return "e_title_create".localized
        case .emergencyCall:
            return "e_title_emergencyCall".localized
        }
    }
    
    var description: String {
        switch self {
        case .rescue:
            return "e_decription_title_rescue".localized
        case .ambulance:
            return "e_decription_title_ambulance".localized
        case .fire:
            return "e_decription_title_fire".localized
        case .police:
            return "e_decription_title_police".localized
        case .create:
            return "e_decription_title_create".localized
        case .emergencyCall:
            return "e_decription_title_emergencyCall".localized
        }
    }
}

enum CallType {
    case callYamada
    case callTanaka
    
    var title: String {
        switch self {
        case .callYamada:
            return "t_titlet_call_yamada".localized
        case .callTanaka:
            return "t_title_call_tanaka".localized
        }
    }
}

enum MessageType {
    case messYamada
    case messTanaka
    
    var title: String {
        switch self {
        case .messYamada:
            return "t_titlet_mess_yamada".localized
        case .messTanaka:
            return "t_titlet_mess_tanaka".localized
        }
    }
}


enum DetectMoneyType {
    case paper
    case coin
    
    var description: String {
        switch self {
        case .paper:
            return "t_detect_money_paper".localized
        case .coin:
            return "t_detect_money_coin".localized
        }
    }
}
