//
//  NotesListContract.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation


protocol NotesListDisplaying: class  {
    var presenter: NotesListPresenting? {get set}
    func reloadTableView()
}

protocol NotesListRouting: class {
    
    weak var view: NotesListViewController? {get set}
    func goToNoteScreen(model: NotesModel?)
}

protocol NotesListPresenting {
    var view: NotesListDisplaying? {get set}
    func numberOfRows() -> Int
    func itemAtIndex(row: Int) -> String
    func didSelect(row: Int)
    func gotoAddNotes()
    func viewDidLoad() 
}


protocol NotesListInteracting: class {
    func fetchNotesList() -> [NotesModel]
}

