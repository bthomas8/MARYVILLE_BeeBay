//
//  ViewController.swift
//  Final Showcase Extravaganza
//
//  Created by Gross, Paul on 12/10/17.
//  Copyright © 2017 Maryville App Development. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resetAll()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Outlets
    @IBOutlet weak var combPriceLabel: UILabel!
    @IBOutlet weak var cerealPriceLabel: UILabel!
    @IBOutlet weak var flowerPriceLabel: UILabel!
    @IBOutlet weak var beePriceLabel: UILabel!
    @IBOutlet weak var cakesPriceLabel: UILabel!
    @IBOutlet weak var beeSuitPriceLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    //Variables
    var combPrice: Double = 0
    var combCount: Int = 0
    var cerealPrice: Double = 0
    var cerealCount: Int = 0
    var flowerPrice: Double = 0
    var flowerCount: Int = 0
    var beePrice: Double = 0
    var beeCount: Int = 0
    var cakesPrice: Double = 0
    var cakesCount: Int = 0
    var beeSuitPrice: Double = 0
    var beeSuitCount: Int = 0
    var totalPrice: Double = 0
    
    //Functions
    @IBAction func addToComb(_ sender: UIButton) {
        combPrice += 2.5
        combCount += 1
        updateComb() }
    @IBAction func dropFromComb(_ sender: UIButton) {
        if combPrice > 0 {
            combPrice -= 2.5
        } else {}
        if combCount > 0 {
            combCount -= 1
        } else {}
        updateComb() }
    func updateComb() {
        combPriceLabel.text = String(combPrice)
        updateTotal()
    }
    
    @IBAction func addToCereal(_ sender: UIButton) {
        cerealPrice += 1.75
        cerealCount += 1
        updateCereal()}
   
    @IBAction func dropFromCereal(_ sender: UIButton) {
        if cerealPrice > 0 {
            cerealPrice -= 1.75
        } else {}
        if cerealCount > 0 {
            cerealCount -= 1
        } else {}
        updateCereal()}
    func updateCereal() {
        cerealPriceLabel.text = String(cerealPrice)
        updateTotal()
    }
    
    @IBAction func addToFlower(_ sender: UIButton) {
        flowerPrice += 4.5
        flowerCount += 1
        updateFlower()}
    @IBAction func dropFromFlower(_ sender: UIButton) {
        if flowerPrice > 0 {
            flowerPrice -= 4.5
        } else {}
        if flowerCount > 0 {
            flowerCount -= 1
        } else {}
        updateFlower()}
    func updateFlower() {
        flowerPriceLabel.text = String(flowerPrice)
        updateTotal()
    }
    
    @IBAction func addToBee(_ sender: UIButton) {
        beePrice += 6.25
        beeCount += 1
        updateBee()}
    @IBAction func dropFromBee(_ sender: UIButton) {
        if beePrice > 0 {
            beePrice -= 6.25
        } else {}
        if beeCount > 0 {
            beeCount -= 1
        } else {}
        updateBee()}
    func updateBee() {
        beePriceLabel.text = String(beePrice)
        updateTotal()
    }
    
    @IBAction func addToCakes(_ sender: UIButton) {
        cakesPrice += 5.5
        cakesCount += 1
        updateCakes()}
    @IBAction func dropFromCakes(_ sender: UIButton) {
        if cakesPrice > 0 {
            cakesPrice -= 5.5
        } else {}
        if cakesCount > 0 {
            cakesCount -= 1
        } else {}
        updateCakes()}
    func updateCakes() {
        cakesPriceLabel.text = String(cakesPrice)
        updateTotal()
    }
    
    @IBAction func addToBeeSuit(_ sender: UIButton) {
        beeSuitPrice += 25.5
        beeSuitCount += 1
        updateBeeSuit()}
    @IBAction func dropFromBeeSuit(_ sender: UIButton) {
        if beeSuitPrice > 0 {
            beeSuitPrice -= 25.5
        } else {}
        if beeSuitCount > 0 {
            beeSuitCount -= 1
        } else {}
        updateBeeSuit()}
    func updateBeeSuit() {
        beeSuitPriceLabel.text = String(beeSuitPrice)
        updateTotal()
    }
    
    func updateTotal() {
        totalPrice = combPrice + cerealPrice + flowerPrice + beePrice + cakesPrice + beeSuitPrice
        totalPriceLabel.text = String(totalPrice)
    }
    
    //Referenced this source for passing data
    //https://learnappmaking.com/pass-data-view-controllers-swift-how-to/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SumViewController {
            let view = segue.destination as? SumViewController
            view?.combPrice = "$2.50"
            view?.combCount = String(combCount)
            view?.combTotal = "$" + String(combPrice)
            
            view?.cerealPrice = "$1.75"
            view?.cerealCount = String(cerealCount)
            view?.cerealTotal = "$" + String(cerealPrice)
            
            view?.flowerPrice = "$4.50"
            view?.flowerCount = String(flowerCount)
            view?.flowerTotal = "$" + String(flowerPrice)
            
            view?.beePrice = "$6.25"
            view?.beeCount = String(beeCount)
            view?.beeTotal = "$" + String(beePrice)
            
            view?.cakesPrice = "$5.5"
            view?.cakesCount = String(cakesCount)
            view?.cakesTotal = "$" + String(cakesPrice)
            
            view?.beeSuitPrice = "$25.50"
            view?.beeSuitCount = String(beeSuitCount)
            view?.beeSuitTotal = "$" + String(beeSuitPrice)
            
            view?.totalTotalPrice = "$" + String(totalPrice)
        }
    }
    
    @IBAction func proceedScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "proceed", sender: nil)
    }
    
    @IBAction func resetValues(_ sender: UIButton) {
        resetAll()
    }
    
    func resetAll() {
        combPrice = 0
        combCount = 0
        cerealPrice = 0
        cerealCount = 0
        flowerPrice = 0
        flowerCount = 0
        beePrice = 0
        beeCount = 0
        cakesPrice = 0
        cakesCount = 0
        beeSuitPrice = 0
        beeSuitCount = 0
        updateComb()
        updateCereal()
        updateFlower()
        updateBee()
        updateCakes()
        updateBeeSuit()
        updateTotal()
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

