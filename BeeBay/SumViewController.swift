//
//  SumViewController.swift
//  Final Showcase Extravaganza
//
//  Created by BT User on 5/2/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class SumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setAll()
    }
    
    //Outlets
    @IBOutlet weak var combPriceLabel: UILabel!
    @IBOutlet weak var combCountLabel: UILabel!
    @IBOutlet weak var combTotalLabel: UILabel!
    
    @IBOutlet weak var cerealPriceLabel: UILabel!
    @IBOutlet weak var cerealCountLabel: UILabel!
    @IBOutlet weak var cerealTotalLabel: UILabel!
    
    @IBOutlet weak var flowerPriceLabel: UILabel!
    @IBOutlet weak var flowerCountLabel: UILabel!
    @IBOutlet weak var flowerTotalLabel: UILabel!
    
    @IBOutlet weak var beePriceLabel: UILabel!
    @IBOutlet weak var beeCountLabel: UILabel!
    @IBOutlet weak var beeTotalLabel: UILabel!
    
    @IBOutlet weak var cakesPriceLabel: UILabel!
    @IBOutlet weak var cakesCountLabel: UILabel!
    @IBOutlet weak var cakesTotalLabel: UILabel!
    
    @IBOutlet weak var beeSuitPriceLabel: UILabel!
    @IBOutlet weak var beeSuitCountLabel: UILabel!
    @IBOutlet weak var beeSuitTotalLabel: UILabel!
    
    @IBOutlet weak var totalTotalPriceLabel: UILabel!
    
    //Variables
    var combPrice: String = ""
    var combCount: String = ""
    var combTotal: String = ""
    
    var cerealPrice: String = ""
    var cerealCount: String = ""
    var cerealTotal: String = ""
    
    var flowerPrice: String = ""
    var flowerCount: String = ""
    var flowerTotal: String = ""
    
    var beePrice: String = ""
    var beeCount: String = ""
    var beeTotal: String = ""
    
    var cakesPrice: String = ""
    var cakesCount: String = ""
    var cakesTotal: String = ""
    
    var beeSuitPrice: String = ""
    var beeSuitCount: String = ""
    var beeSuitTotal: String = ""
    
    var totalTotalPrice: String = ""
    
    //Functions
    func setAll() {
        combPriceLabel.text = combPrice
        combCountLabel.text = combCount
        combTotalLabel.text = combTotal
        
        cerealPriceLabel.text = cerealPrice
        cerealCountLabel.text = cerealCount
        cerealTotalLabel.text = cerealTotal
        
        flowerPriceLabel.text = flowerPrice
        flowerCountLabel.text = flowerCount
        flowerTotalLabel.text = flowerTotal
        
        beePriceLabel.text = beePrice
        beeCountLabel.text = beeCount
        beeTotalLabel.text = beeTotal
        
        cakesPriceLabel.text = cakesPrice
        cakesCountLabel.text = cakesCount
        cakesTotalLabel.text = cakesTotal
        
        beeSuitPriceLabel.text = beeSuitPrice
        beeSuitCountLabel.text = beeSuitCount
        beeSuitTotalLabel.text = beeSuitTotal
        
        totalTotalPriceLabel.text = totalTotalPrice
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "goBack", sender: nil)}
    @IBAction func doIt(_ sender: UIButton) {
        performSegue(withIdentifier: "doIt", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
