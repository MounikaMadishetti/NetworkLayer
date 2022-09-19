
import UIKit

class ViewController: UIViewController {
var vm = NewsListViewModel()
    var articles: [Article] = [Article]()
    @IBOutlet weak var collectionVeiw: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News"
        collectionVeiw.collectionViewLayout = UICollectionViewFlowLayout()
        registerCells()
        vm.getAPIResponse { [weak self] articles in
            self?.articles = articles
            self?.collectionVeiw.reloadData()
            
        }
        // Do any additional setup after loading the view.
    }
    func registerCells() {
        collectionVeiw.register(UINib(nibName: NewsListCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: NewsListCollectionViewCell.reuseId)
    }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsListCollectionViewCell.reuseId, for: indexPath) as? NewsListCollectionViewCell else { return UICollectionViewCell() }
        cell.configure(article: articles[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Double(collectionView.bounds.width / 2 - 10), height: Double(200))
    }
    
}





