import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var address: UITextField!

    func loadPage() {
        let pageAddress = address.text!
        NSLog("Loading page at '%@'", pageAddress)
        webView.loadRequest(URLRequest(url: URL(string: pageAddress)!))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        address.text = "https://www.igalia.com"
        loadPage()
    }

    @IBAction func addressChanged(_ sender: Any) {
        loadPage()
    }

    @IBAction func addressDidEndOnExit(_ sender: Any) {
        address.resignFirstResponder()
        loadPage()
    }
}
