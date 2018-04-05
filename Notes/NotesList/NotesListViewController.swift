//
//  ViewController.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import UIKit



class NotesListViewController: UITableViewController, NotesListDisplaying {
    
    var presenter: NotesListPresenting?
    
    @IBAction func addTapped() {
        presenter?.gotoAddNotes()
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    
    func make() {
        let presenter = NotesListPresenter()
        let router = NotesListRouter()
        let interactor = NotesListInteractor()
        presenter.interactor = interactor
        
        router.view = self
        
        presenter.router = router
        presenter.view = self
        self.presenter = presenter
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidLoad()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        make()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelect(row: indexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "com.ap.notelistcell") else {return UITableViewCell()}
        cell.textLabel?.text = presenter?.itemAtIndex(row: indexPath.row)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfRows() ?? 0
    }



}

