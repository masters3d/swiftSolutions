

enum Allergies:UInt {
    
    static func hasAllergy(value:UInt, testAgainst: Allergies) -> Bool {
        return value & testAgainst.rawValue  > 0
    }
    case None = 0
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
  
}
