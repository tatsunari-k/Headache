import UIKit

//h//ttps://blog.ch3cooh.jp/entry/20160829/1472432400
//
class HSV {
    //色相
    var hue: Double = 0
    //彩度
    var saturation: Double = 0
    //明度
    var value: Double = 0
    
    init(hue: Double, saturation: Double, value: Double) {
        self.hue = hue
        self.saturation = saturation
        self.value = value
}

    class func fromRGB(red: Int, green: Int, blue: Int) -> HSV {
        // R、GおよびBが0.0を最小量、1.0を最大値とする0.0から1.0の範囲にある
        let r = Double(red) / 255
        let g = Double(green) / 255
        let b = Double(blue) / 255
        
        let maxValue = max(max(r, g), b)
        let minValue = min(min(r, g), b)
        let sub = maxValue - minValue
        
        var h: Double = 0
        var s: Double = 0
        var v: Double = 0
        
        // Calculate Hue
        if sub == 0 {
            // MAX = MIN(例・S = 0)のとき、 Hは定義されない。
            h = 0
        } else {
            if (maxValue == r) {
                h = (60 * (g - b) / sub) + 0;
            } else if (maxValue == g) {
                h = (60 * (b - r) / sub) + 120;
            } else if (maxValue == b) {
                h = (60 * (r - g) / sub) + 240;
            }
            // さらに H += 360 if H < 0
            if (h < 0) {
                h += 360;
            }
        }
        
        // Calculate Saturation
        if (maxValue > 0) {
            s = sub / maxValue * 100;
        }
        
        // Calculate Value
        v = maxValue * 100
        
        return HSV(hue: floor(h), saturation: floor(s), value: floor(v))
    }
}
