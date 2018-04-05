//
//  NotesListRouter.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import UIKit

class NotesListRouter: NotesListRouting {

    
    weak var view: NotesListViewController?
    
    func goToNoteScreen(model: NotesModel?) {
        let vc = AddNotesRouter.make(notesModel: model)
        view?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
