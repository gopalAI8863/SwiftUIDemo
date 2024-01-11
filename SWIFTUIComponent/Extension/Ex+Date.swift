//
//  Ex+Date.swift
//  SWIFTUIComponent
//
//  Created by AIL088 on 28/12/23.
//

import Foundation
extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
            return dateFormatter.string(from: self)
        }
    
    func formatStringDate(date: String) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            let newDate = dateFormatter.date(from: date)
            dateFormatter.setLocalizedDateFormatFromTemplate("MMMM d, yyyy")
            return dateFormatter.string(from: newDate!)
    }
}
