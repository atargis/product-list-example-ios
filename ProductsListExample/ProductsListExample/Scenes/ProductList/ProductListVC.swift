//
//  ProductListVC.swift
//  ProductListViewController
//
//  Created by Adam Kowalski on 02/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit
import RxDataSources
import RxSwift

final class ProductListVC: UIViewController {

    private let productListView: ProductListView
    private let completedLayoutSubject = PublishSubject<Bool>()
    private let disposeBag = DisposeBag()
    
    init() {
        productListView = ProductListView.fromXib()
        super.init(nibName: nil, bundle: nil)
        view.addSubview(productListView)
        productListView.pinToSuperview()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        completedLayoutSubject
            .ignoreElements()
            .subscribe { [weak self] _ in
                self?.bindDataSource()
            }.disposed(by: disposeBag)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        completedLayoutSubject.onCompleted()
    }
    
    private func bindDataSource() {
        productListView.tableView.delegate = nil
        productListView.tableView.register(UINib(nibName: "ProductItemTableViewCell", bundle: nil), forCellReuseIdentifier: ProductItemTableViewCell.reuseIdentifier)

        let datasource = RxTableViewSectionedReloadDataSource<ProductItemClusterSection>(configureCell: { (_, tableView, _, model) -> UITableViewCell in
            if let cell = tableView.dequeueReusableCell(withIdentifier: ProductItemTableViewCell.reuseIdentifier) as? ProductItemTableViewCell {
                cell.setup(model: model)
                cell.layoutIfNeeded()
                return cell
            } else {
                return UITableViewCell()
            }
        }, titleForHeaderInSection: { datasource, index in
            datasource.sectionModels[index].sectionTitle
        })
        
        Observable.just(ProductItemClusterSection.listProducts())
            .bind(to: productListView.tableView.rx.items(dataSource: datasource))
            .disposed(by: disposeBag)
    }
}
