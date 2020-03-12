//
//  String.swift
//  SpeechToText
//
//  Created by SonNV-D1 on 3/11/20.
//  Copyright © 2020 SonNV-D1. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
}
