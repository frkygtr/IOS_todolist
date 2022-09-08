//
//  HomeViewController.swift
//  todolistapp
//
//  Created by Furkan Yiğiter on 19.07.2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        
        self.tableView.register(nib, forHeaderFooterViewReuseIdentifier: "CustomTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.myLabel.text = "test"
        //UITableViewCell()®
        //∫cell.textLabel?.text = "test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    @IBAction func newListButton(_ sender: Any) {
        
        let secondVC = SubViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        /*let secondVC = SubViewController()
        let navVC = UINavigationController(rootViewController: secondVC)
        present(navVC, animated: true)*/
        
        print("test")
        print("done")

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
