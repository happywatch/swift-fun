// Playground - noun: a place where people can play

import UIKit

/***
Views
(Click the EYE icon in the sidebar to see the results)
***/

let word = "Hello"

let aColor = UIColor.cyanColor()

let aFont = UIFont.systemFontOfSize(42)

let attrStr = NSAttributedString (string: word, attributes: [NSForegroundColorAttributeName: aColor, NSFontAttributeName: aFont])

let aFrame = CGRect(x:0,y:0,width:200,height:100)

let aView = UIView(frame: aFrame)
aView.backgroundColor = UIColor.redColor()

let aLabel = UILabel(frame: aView.frame)
aLabel.attributedText = attrStr

aView.addSubview(aLabel)




/***
Images

Located in Finder.
Right-click the playground file > Show Package Contents > Resouces folder.
Anyhting you add in there is accessible in code.
***/




let imageView = UIImageView(frame: CGRect(x: 150, y: 30, width: 40, height: 40))
imageView.contentMode = .ScaleAspectFit

let image = UIImage(named: "Dave")
imageView.image = image

aView.addSubview(imageView)




/***
Objects
***/



class Minion {
    let name: String
    let image: UIImage
    let favoriteActivity: String
    
    init(name: String, favoriteActivity: String) {
        self.name = name
        self.favoriteActivity = favoriteActivity
        if let image = UIImage(named: name) {
            self.image = image
        } else {
            self.image = UIImage()
        }
    }
    
    func description() -> String {
        return "Minion \(name) likes \(favoriteActivity.lowercaseString)"
    }
}

let minionBob = Minion(name: "Bob", favoriteActivity: "Orbiting Earth")
minionBob.description()
minionBob.image










/***
Tables
***/


class MinionDataSource: NSObject, UITableViewDataSource {
    
    let minionDetails = ["Bob" : "Orbiing Earth", "Dave" : "Rockets & Missles", "Jerry" : "Playing and hanging out with Stuart (BFF)", "Jorge" : "Making photocipies of his bottom", "Kevin" : "Fixing the Internet", "Mark" : "Singing", "Phil" : "Being kiseed by Agnes", "Stuart" : "Playing & Laughing", "Tim" : "Playing boss"]
    var minions = [Minion]()
    
    override init()  {
        for (minionName, minionFavoriteActivity) in minionDetails {
            let minion = Minion(name: minionName, favoriteActivity: minionFavoriteActivity)
            minions.append(minion)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return minions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let style = UITableViewCellStyle.Subtitle
        let cell = UITableViewCell(style: style, reuseIdentifier: nil)
        
        let minion = minions[indexPath.row]
        cell.imageView.image = minion.image
        cell.textLabel.text = minion.name
        cell.detailTextLabel?.text = "Likes \(minion.favoriteActivity.lowercaseString)"
        
        return cell;
    }
    
}










let minionDataSource = MinionDataSource()
let frame = CGRect(x: 0, y: 0, width: 320, height: 500)
let tableView = UITableView(frame: frame, style: .Plain)
tableView.dataSource = minionDataSource
tableView.reloadData()















