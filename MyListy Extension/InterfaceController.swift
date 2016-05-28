//
//  InterfaceController.swift
//  MyListy Extension
//
//  Created by Nimble Chapps on 17/05/16.
//  Copyright © 2016 gurusoft. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var tableVwFriends: WKInterfaceTable!
    
    let arrFriendList = ["Guruprasad", "Harry", "Duke", "Kothmir"] // Static array of names
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        loadTableData() // load table in interface controller.
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    override func didAppear() {
        super.didAppear()
    }
    
    override func willDisappear() {
        super.willDisappear()
    }
    
    func loadTableData() {
        // How many rows in table
        tableVwFriends.setNumberOfRows(arrFriendList.count, withRowType: "FriendTableCell")
        
        // Generate table rows and set label texts.
        for (nameIndex, name) in arrFriendList.enumerate() {
            let row = tableVwFriends.rowControllerAtIndex(nameIndex) as! FriendTableCell
            row.labelFriendName.setText(name)
        }
    }
}


/**** TABLE ROW CUSTOM CLASS  ****/

class FriendTableCell : NSObject {
    @IBOutlet var labelFriendName: WKInterfaceLabel!
}





