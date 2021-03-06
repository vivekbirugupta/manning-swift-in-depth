//: [Table of contents](Table%20of%20contents) - [Previous page](@previous)
//: # Answer
//: Given these classes:
class Device {
    
    var serialNumber: String
    var room: String
    
    init(serialNumber: String, room: String) {
        self.serialNumber = serialNumber
        self.room = room
    }
    
    convenience init() {
        self.init(serialNumber: "Unknown", room: "Unknown")
    }
    
    convenience init(serialNumber: String) {
        self.init(serialNumber: serialNumber, room: "Unknown")
    }
    
    convenience init(room: String) {
        self.init(serialNumber: "Unknown", room: room)
    }
    
}

class Television: Device {
    enum ScreenType {
        case led
        case oled
        case lcd
        case unknown
    }
    
    enum Resolution {
        case ultraHd
        case fullHd
        case hd
        case sd
        case unknown
    }
    
    let resolution: Resolution
    let screenType: ScreenType
    
    init(resolution: Resolution, screenType: ScreenType, serialNumber: String, room: String) {
        self.resolution = resolution
        self.screenType = screenType
        super.init(serialNumber: serialNumber, room: room)
    }
    
    //: Add a convenience initializer to Television which overrides a designated initializer from Device.
    convenience override init(serialNumber: String, room: String) {
        self.init(resolution: .unknown, screenType: .unknown, serialNumber: serialNumber, room: room)
    }

}

class HandHeldTelevision: Television {
    let weight: Int
    
    init(weight: Int, resolution: Resolution, screenType: ScreenType, serialNumber: String, room: String) {
        self.weight = weight
        super.init(resolution: resolution, screenType: screenType, serialNumber: serialNumber, room: room)
    }
    
    //: Add a convenience initializer to HandHeldTelevision which overrides a designated initializer from Television.
    convenience override init(resolution: Resolution, screenType: ScreenType, serialNumber: String, room: String) {
        self.init(weight: 0, resolution: resolution, screenType: screenType, serialNumber: "Unknown", room: "UnKnown")
    }
    
}

//: Add two convenience override initializers in the subclassing hierarchy to make this initializer from the top-most superclass work.
let handheldTelevision = HandHeldTelevision(serialNumber: "293nr30znNdjW")

//: [Table of contents](Table%20of%20contents) - [Previous page](@previous)
