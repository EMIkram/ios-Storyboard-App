import UIKit

class ViewController: UIViewController {
    let arrayForDynamicTable = [(label: "Gray", color: UIColor.gray) , (label: "Red",color: UIColor.red) , (label: "Yellow",color: UIColor.yellow), (label: "Blue",color: UIColor.blue)]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForDynamicTable.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayForDynamicTable[indexPath.row].label
        cell.backgroundColor = arrayForDynamicTable[indexPath.row].color
//        cell.layoutMargins = UIEdgeInsets.init(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
        cell.isSelected = indexPath.row == 3 ? true : false
        
        return cell
    }
}
extension ViewController : UITableViewDelegate{

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
