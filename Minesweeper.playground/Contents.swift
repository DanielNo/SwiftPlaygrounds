//: Playground - noun: a place where people can play

import UIKit
public struct Tile : CustomStringConvertible{
    public var description: String
    
    var visible : Bool
    var flaggedAsBomb : Bool
    var hasBomb : Bool
    init() {
        self.visible = false
        self.flaggedAsBomb = false
        self.hasBomb = false
        self.description = "1"
        
    }


}





public class GameBoard: CustomStringConvertible{
    public var description: String = {
     return
    }()
    
    var tiles : [[Tile]]
    
    init(numRowsY : Int, numColumnsX : Int) {
        var rows : [[Tile]] = []
        for num in 1...numColumnsX{
            rows.append(Array(repeating: Tile(), count: numRowsY))
        }
        tiles = rows
        for 
    }
    
    public func print(){
        print(self)
        let tile = tiles[0][0]
    }


}


let minesweeperBoard = GameBoard(numRowsY: 10, numColumnsX: 10)
minesweeperBoard.print()
