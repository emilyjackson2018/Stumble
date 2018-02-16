//
//  ViewController.swift
//  Stumble_Matches
//
//  Created by Emily Jackson on 2/15/18.
//  Copyright © 2018 Emily Jackson. All rights reserved.
//

import UIKit

class MatchesTableViewController: UITableViewController {

	var  menu:[String:String] = [
		"Ice Cream Cone": "Ice Cream",
		"Ice Cream Sundae": "Ice Cream",
		"Apple Pie": "Pie",
		"Cherry Pie": "Pie",
		"Coconut Cream": "Pie",
		"Tiramisu": "Cake",
		"Chocolate Chip Cookie": "Cookie",
		"7-Layer Cake": "Cake",
		"Boston Cream Doughnut": "Doughnut",
		"Cruller": "Doughnut",
		"Long John": "Doughnut",
		"Blueberry Muffin": "Cake",
		"Vanilla Cupcake": "Cake",
		"Shake": "Drink",
		"Malted": "Drink",
		"Root Beer Float": "Drink"]
	var dessertList = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		dessertList = [String](menu.keys)
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override func numberOfSectionsInTableView(
		tableView: UITableView
		) -> Int {
		return 1
	}
	override func tableView(
		tableView: UITableView,
		numberOfRowsInSection section: Int
	) ->; Int {
	return dessertList.count
	}
	//iteration 1
	override func tableView(
		tableView: UITableView,
		cellForRowAtIndexPath indexPath: NSIndexPath
		) -> UITableViewCell {
		let row = indexPath.row
		let title = dessertList[row]
		let detail = menu[title]!
		
		if row % 2 == 0 {
			let cell = tableView.dequeueReusableCellWithIdentifier("cell",
									       forIndexPath: indexPath)
			cell.textLabel?.text = title
			cell.detailTextLabel?.text = detail
			return cell
		}else{
			let cell = tableView.dequeueReusableCellWithIdentifier("options cell",
									       forIndexPath: indexPath)
			cell.textLabel?.text = title
			cell.detailTextLabel?.text = detail
			return cell
		}
	}

}

