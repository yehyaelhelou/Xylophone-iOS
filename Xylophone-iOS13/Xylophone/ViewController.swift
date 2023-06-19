
import UIKit
import AVFoundation       // هذي الخاصية تم اضافتها من جوجل للتعامل والتفاعل مع أجهزة الصوت

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func KeyPressed(_ sender: UIButton) {
        playSound(SoundName: sender.currentTitle!)   //sender.currentTitle عند الضغط على الزر الحالي سيتم حفظ العنصر مع اسمه واظهاره في الكومبيلر
    }
    
    func playSound(SoundName:String) {  // SoundName أخذت جميع عناصر الموسيقى وراح تشتغل كل العناصر اما لو ما استخذمتها وحطيت اسم العنصر فقط حتنفذ فقط العنصر
        let url = Bundle.main.url(forResource: SoundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
//        sleep(UInt32(2.0)) // عند الضغط على العنصر يتم تنفيذ العنصر الثاني بعد ثانيتين
        print("Start")
        print("End")

    }
    
    

}


