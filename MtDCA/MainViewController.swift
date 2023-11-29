//
//  MainViewController.swift
//  MtDCA
//
//  Created by Milan Djordjevic on 29/11/2023.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet weak var textLbl: UILabel!
    
    private var styling: StylingFacadeType?
    
    init(styling: StylingFacadeType = StylingFacade()) {
        self.styling = styling
        super.init(nibName: "MainViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .paint(.Primary)
        
        textLbl.font = styling?.use(ofSize: 40, weight: .bold)
    }
}
