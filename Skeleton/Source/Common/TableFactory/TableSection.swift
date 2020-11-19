import UIKit

protocol TableSection {

    typealias HeaderFactory = (UITableView) -> UIView?
    typealias CellFactory = ((UITableView, IndexPath) -> UITableViewCell)

    var title: String? { get }
    var numberOfRows: Int { get }
    var headerHeight: CGFloat { get }
    var headerFactory: HeaderFactory { get }
    var cellFactory: CellFactory { get }
    var registerCell: (UITableView) -> Void { get }

    func separatorInset(for indexPath: IndexPath) -> UIEdgeInsets
    func didSelectRow(for indexPath: IndexPath)
}

extension TableSection {
    var title: String? {
        return nil
    }

    var headerHeight: CGFloat {
        return 0
    }

    var headerFactory: HeaderFactory {
        return { _ in
            return nil
        }
    }

    func separatorInset(for indexPath: IndexPath) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func didSelectRow(for indexPath: IndexPath) {}
}
