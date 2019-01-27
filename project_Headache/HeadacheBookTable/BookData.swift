import RealmSwift
import Foundation

class BookData: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    //オブジェクトの画像情報
    //どの画像に対する座標情報なのか
    //座標情報 CGrect正面
    //x
    @objc dynamic var headacheFX = ""
    //y
    @objc dynamic var headacheFY = ""
    //width
    @objc dynamic var headacheFW = ""
    //hight
    @objc dynamic var headacheFH = ""
    //どの画像に対する座標情報なのか
    @objc dynamic var imageF = ""
    

    //座標情報 CGrect正面
    //x
    @objc dynamic var headacheSX = ""
    //y
    @objc dynamic var headacheSY = ""
    //width
    @objc dynamic var headacheSW = ""
    //hight
    @objc dynamic var headacheSH = ""
    //どの画像に対する座標情報なのか
    @objc dynamic var imageS = ""

    //各座標の情報を登録する際のimageサイズ
    @objc dynamic var aspectW = ""
    @objc dynamic var aspectH = ""
    
    // 前画像
    @objc dynamic var imageFront = ""
    
    // 横画像
    @objc dynamic var imageSide = ""
    
    //色情報
    //rgbColor
    @objc dynamic var ColorR = ""
    @objc dynamic var ColorG = ""
    @objc dynamic var ColorB = ""
    
    //言語化した頭痛のテキスト情報//ズキズキ・ガンガン…など
    @objc dynamic var headacheKindText = ""
    
    /// 登録した日付、TaskAppみたいに更新する必要はなく。登録日の情報のみでOK
    @objc dynamic var date = Date()
    
    //頭痛のメモ情報
    //テーブルセルタップした際に表示される別のViewに頭痛のときの感想的なものを記入できるようにしておく。
    @objc dynamic var noteText = ""
    
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}
