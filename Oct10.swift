extension UITableView {

    func reloadDataSavingSelections() {
        let selectedRows = indexPathsForSelectedRows

        reloadData()

        if let selectedRow = selectedRows {
            for indexPath in selectedRow {
                selectRow(at: indexPath, animated: false, scrollPosition: .none)
            }
        }
    }
}

// Call this where you call tableView.reloadData() and replace it with.

tableView.reloadDataSavingSelections()
