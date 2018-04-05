//
//  AddNotesRouter.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import UIKit

class AddNotesRouter: AddNotesRouting {
   
    var view: AddNotesViewController?
    
    static func make(notesModel: NotesModel?) -> UIViewController {
        let storyboad = UIStoryboard.init(name: "AddNotes", bundle: nil)
        guard let viewController = storyboad.instantiateInitialViewController() as? AddNotesViewController else {
            return UIViewController()
        }
    
        let presenter = AddNotePresenter()
        presenter.view = viewController
        
        viewController.presenter = presenter
        
        let router = AddNotesRouter()
        router.view =  viewController
        
        let interactor = AddNotesInteractor(model: notesModel)
        presenter.interactor = interactor
        
    
        
        return viewController
    }
    
}
