import Foundation

public func dayTwo() -> (Int, String) {
    return (dayTwoPartOne(), dayTwoPartTwo())
}

public func dayTwoPartOne() -> Int {
    let inputArray = input.split(separator: "\n").map { "\($0)"}
    
    var twices = 0
    var thrices = 0
    
    func hasTwices(_ string: String) -> Bool {
        for char in string {
            if string.replacingOccurrences(of: "\(char)", with: "").count == string.count - 2 {
                return true
            }
        }
        return false
    }
    
    func hasThrices(_ string: String) -> Bool {
        for char in string {
            if string.replacingOccurrences(of: "\(char)", with: "").count == string.count - 3 {
                return true
            }
        }
        return false
    }
    
    for value in inputArray {
        if hasTwices(value) {
            twices += 1
        }
        if hasThrices(value) {
            thrices += 1
        }
    }
    
    return twices * thrices
}

public func dayTwoPartTwo() -> String {
    let inputArray = input.split(separator: "\n").map { "\($0)"}
    
    for (index, value) in inputArray.enumerated() {
        if index == inputArray.count { break }
        for (cIndex, _) in value.enumerated() {
            for (sIndex, sValue) in inputArray.enumerated() {
                if sIndex == index { continue }
                var xValue = value
                var xsValue = sValue
                if xValue.iRemove(at: cIndex) == xsValue.iRemove(at: cIndex) {
                    return xValue
                }
            }
        }
    }
    return ""
}

extension String {
    mutating func iRemove(at position: Int) -> String {
        if position > self.count {
            self.remove(at: self.endIndex)
        } else {
            self.remove(at: self.index(self.startIndex, offsetBy: position))
        }
        return self
    }
}


fileprivate let input = """
uqcipadzntnheslgvjjozmkfyr
uqcipadzwtnhexlzvxjobmkfkr
cqcipadpwtnheslgyxjobmkfyr
ubnipadzwtnheslgvxjobmkfyw
uqcisadzwtnheslgvxjfbmkfor
uqcisaezwtnheslgvxkobmkfyr
uqcguadzwtnheslgvxjobmkfir
uqcipadzmtnhesldvxdobmkfyr
uqcipadzwtzheslgdxjtbmkfyr
uquipadzwtcheslgvxjobmkfbr
uqctpadzwtnhesjbvxjobmkfyr
ueciparzwtnheslgvxjobmkfyx
uqcipadzwtnhessgvxjkbmkfkr
uqcipamzwtnheslgvxioamkfyr
uciizadzwtnheslgvxjobmkfyr
uqcieadzwtnhesfgvxeobmkfyr
fqcipadzwtnreslgvkjobmkfyr
uqcipadzrtnherlgvxjobmklyr
uqcypadzwtnheslgvxjobmkxfr
uqcipadzwtnhemlgvxjobmvfur
uwciuadzwwnheslgvxjobmkfyr
uqcipadzwtnhcscgvxjobmkuyr
upripadzwtnheslovxjobmkfyr
uqcipadzltnheslgvxjobmkftc
uqcipadzwtnheslgvgjobmifsr
uqoipadzwtnheslgvxjosmkfkr
uqcipadzwtbhesrqvxjobmkfyr
uqcipadzwtnheslpvxjobmhfyx
uhcinadzwtnheslgvxjybmkfyr
uqcipadzwtnhhslgvxjabmkbyr
uecipadzwtnheslgvxjobqyfyr
uqcipadfwtnheslwvxjobgkfyr
uqcipadzvtnheshgvxzobmkfyr
fqcipadzwtcheslgvxjobmkfyt
uecipadzwtnheslgpxjbbmkfyr
uqclpadzwtnheslgvnjobukfyr
qqciprdzetnheslgvxjobmkfyr
uqcipahpwtnheslgvxjtbmkfyr
uqcidadzwtnhesljvxyobmkfyr
uqciradswtnqeslgvxjobmkfyr
uqcipadzwtrhmslgvxjobmkfyf
urcipadzjtnheslgvxfobmkfyr
uqcipadzwznheslgvxjobmkfcv
uqcipadowtnheslgyxjobmkfym
uqcigadzwtnheslgvxjoomkmyr
uqjipafzwtnheslgvejobmkfyr
uqcioadzwtnhhslgvxzobmkfyr
uqcgpadkwtnheslgvxjobhkfyr
ufciiadewtnheslgvxjobmkfyr
uqoipadzwtnheslgvxjllmkfyr
uqcipadzutnheslgwxxobmkfyr
uqcipadzwtlheslgaxjobmkfwr
uqcbpadzutnheslgvxjbbmkfyr
uucipadzwvnhesngvxjobmkfyr
uqcifadzwtnceslgvxjoumkfyr
ujcipadzwteheslgvxjobmkfyj
uqcipadzwtnheslqvxjobmkuyp
uqcipadzwtnheslgvxjoxmkxyw
uqcipaduwtnheslgvujmbmkfyr
uicipadnwtnheslgvxjobmbfyr
uqcipadzwteheslgvxjobbmfyr
uqcipadzwgnneslgvxjobmklyr
uqcipadzxtnhwslgvbjobmkfyr
uqcipaxwwtnheslxvxjobmkfyr
uocipadzwtnheslgvxjobqdfyr
uqciaauzwtnheslgtxjobmkfyr
uncipagzwtnkeslgvxjobmkfyr
uqcipadzwtnhehlgvxjohdkfyr
uqcipadzwtnheslgvxjobmspyz
uccipadzwtnhvsltvxjobmkfyr
uacipagzwtnheslgvxjoqmkfyr
tqcipaduwtnheslgvxjobmmfyr
uqcipadzwtnheslgvxqebmifyr
uecipadthtnheslgvxjobmkfyr
uocipadzwtnhdslgvkjobmkfyr
uqcipadtwtnheslgvxhobmufyr
uqkipadzwtnleslgtxjobmkfyr
uqcipadzjunheslgvxjobmnfyr
ubcipadzwtvheslgvxjobmkfyf
uqcipadzwpfheslgvxjsbmkfyr
uocipadzwtndeslgvxjobmmfyr
uqcipadzwtnheslgtxjobhkfyq
uqcipadzwtrheslgvxjobmyfya
uqcipadzwtvheslgvxjolgkfyr
uqcipidzwtaheslgvxjobmkfxr
uyzixadzwtnheslgvxjobmkfyr
uqyihadzwtnhedlgvxjobmkfyr
uqcipadzwtnhesltvejobqkfyr
uqciptdzwtnheslgyxlobmkfyr
uqcipzdzwtnhzslgvxjosmkfyr
uqcipadzwtnbeslgexjobmkfvr
uqcipadzwtnheslcwxjobmkkyr
uqcapadzwcnheslgvxjolmkfyr
uqcjpadzwtnhejlgvxjxbmkfyr
uqcipadwwtxweslgvxjobmkfyr
uqmipadzwtnhezlgvxjobmkyyr
uqcipubzwtnpeslgvxjobmkfyr
uecvpadzwtnheslgvxjocmkfyr
uqcipadzwfnheslgvxjibmkdyr
uqcipadzwtnheslgvxvfbykfyr
uqcipadzwtnheslgvgjoimkfyt
dqcqpaqzwtnheslgvxjobmkfyr
uqcipbdzwtnheslgvxjobmkghr
jqcipadzwtnheslgvxjgbmkzyr
uqcipadzwtnheslgvxqkqmkfyr
uqcipadzptnheslgvxjxbokfyr
uucijadzwtwheslgvxjobmkfyr
uccfpadzwtnheslgvxjobpkfyr
uqcipadzwtnheslgvxjobakeyq
uqcipadzwtnheolgvxqobjkfyr
imiipadzwtnheslgvxjobmkfyr
uqcehadzwtnheslgvxjobmkuyr
uqcipadzztnheslgvxjorokfyr
rqcixadzwtnheelgvxjobmkfyr
uqcipadzwtzheslgvxjodmkfyi
uqcipaezwtnwuslgvxjobmkfyr
uqcipadzwtnheslggxjobjkfyq
uqcipadzwkghesagvxjobmkfyr
uqcypqdzwtnheslgvxjobakfyr
iqcipadzwtnhezltvxjobmkfyr
uxcimadzwtnheslgvxjobmxfyr
uqcipaizwtvhwslgvxjobmkfyr
uqcipafzwtnheslgvxjpbmkfym
uqcipadzwinheslgvxlobmpfyr
uqcupadzwtnheslkvxmobmkfyr
uqcapadzwtnhesrgvxjobmkfsr
urcipafzwtnheslgvxjobmkfur
uqcipaczwtnheslgvbjobmknyr
uqcizadzztgheslgvxjobmkfyr
uqcipfdzwtnhesxgvxjobmkfyw
uqcipbdzwtnhyslgvxjobmcfyr
uqcipadzwanhezlgvxjobmkfwr
uvcipadzwtnheslgvxjbkmkfyr
uqcipajzwtnseslgvxjobmkfyq
uqcipvdzwtnheslgvmlobmkfyr
uqcipadzdgnheslgmxjobmkfyr
uqcipddzwtnhestgvpjobmkfyr
umcipadzwtdheslgvxjzbmkfyr
uqciuwdzwtnheslgvxjobmkflr
uqcipadzwtnheslgsxabbmkfyr
uceipadzwtnheslgvxjobgkfyr
mqcipadzwtnhesrgvxjobmjfyr
aqcipadvwtnheslgvxjobmkryr
uqsipadzwtnofslgvxjobmkfyr
uqcixadzwtfheslgvxjzbmkfyr
uqcipadnwfnheslgvxjohmkfyr
uqcivadzwtnheslfvxjobmkfyz
uqciprdzwtnheslgvxjobmkjir
uqcipadhbtnheslgvxjoxmkfyr
fqcipadzwtnhesfgvxjobmkfye
uqoipqdzwtnheqlgvxjobmkfyr
uqcipadzwtnhesltvxmobmkzyr
uqcipadzwtnhebqgvsjobmkfyr
uqcipadzwtnheslglxjobmfbyr
gqcipadzwtgheslgvxjobwkfyr
uqcipadzwtnheslgfxjzbmlfyr
ujcnpadzwtnheslrvxjobmkfyr
ujcivadzwtnheglgvxjobmkfyr
uqcitadzwgnheslgvxjofmkfyr
uqcipahzatnhmslgvxjobmkfyr
uqzipaizwtnheslgvujobmkfyr
uqcipadzltnheylgvnjobmkfyr
uqcidadzwtnhwsljvxyobmkfyr
uqcipadzwtihetlgvxjobhkfyr
oqcipabzwtnheslgvfjobmkfyr
uqcipadzwtnveslgvxjobzkfzr
uqcipadzwtjheslgqxjobmlfyr
uqcnpadzztnheslgvxjobmkoyr
uqciuadzwonheslgvxjobmkfyz
tqcipadzwtnheslgvxaobmqfyr
uqcipadtwtnhqslgvxjobmkeyr
uqcipadzwbnheslgvajobmsfyr
ubcopadzwtnhgslgvxjobmkfyr
uqcipydzwtwheslgvxjobakfyr
cqbijadzwtnheslgvxjobmkfyr
uscipadowtnheslgvxjobmkfcr
uqcipadzwtgheslnvxjobskfyr
uqcipzdzwtnzeslgkxjobmkfyr
uqcipawzwtnhrslgbxjobmkfyr
uqcipadzatchyslgvxjobmkfyr
uqcipadzotnpeslgvxjobmjfyr
uqcipagzwtnheslgvxjobmvfyt
uqcipadzwhnheslgvxyobmkfyo
uqcipadzwtnheslgmqjobmkfyc
uqcupadzwgnheslgvcjobmkfyr
uqcipabzwbnheslgvxjobmkwyr
uqciiadzwtnheslgvxjobmkfmz
uqkipauzwtnheslgvxjjbmkfyr
uqcipidzetnheslgvxjobmkfyi
uqcipadzwtnheslgqxjokmkfmr
uqcipadzqtnhesllvxjobmkfyk
uqccpadzwtnheslgmxsobmkfyr
uqcipadzwteheslgvljfbmkfyr
uqcipadxwinheslgaxjobmkfyr
uqcipadzwtnheslhvxyobmkfjr
aqcipadzwnnheslgvxjqbmkfyr
uvcipadzwtnheszgvxjobmkfyg
uqcipahzmtnheslgvxjobmkfir
ukcipadzbtnheslgvxjobmkfyb
uqcipadzwtnhemlgvqjobmkfpr
uqcipadzwtnheslgvmeobmkfpr
uqciphdrwtnheslgvxjobmkfyw
uqcipadzwtnheslevxqobzkfyr
uqcipadzwknzeslgvxnobmkfyr
wqcipadzwjnheslgvxjobbkfyr
uqcipadzwtdheslgvmjobmkjyr
uqvipadzwtnhextgvxjobmkfyr
uqhipadzwtnheslwvxjzbmkfyr
uqcipadzwtnherlgsxjobmksyr
uqcipadzwtnhesqgvxjotmvfyr
udcipadzwtnhekwgvxjobmkfyr
uqcjprdzwtnheslgvxjobmkfpr
uqcipadzatnheclgvqjobmkfyr
uqcbpadzctnheslqvxjobmkfyr
uqcipadzqtnhesluvxjobrkfyr
uqcipadzwtnhcslgvxjoomwfyr
uqcppadzwxnheslgwxjobmkfyr
uqcipadcwtnheslrvxjdbmkfyr
ukcipadzwtnhhslgvxjobmkgyr
uqckpadzwtnheslgvxjokmkiyr
uqcspadzwtjheslgvxjobmkfjr
uqcipadpwtnhsslgvxjobmkfyu
uqcepadzwtnheilgvbjobmkfyr
jqcipadiwtnheslgvxjobmkjyr
uqcipadzrtnseslgqxjobmkfyr
sqmipadzwtnhewlgvxjobmkfyr
uqcieadzhtnheslgvgjobmkfyr
uqcipadzwkwhewlgvxjobmkfyr
uqcipadzwtzheslgvxjpbqkfyr
uzcipadzjtnheslgvxjobmlfyr
uqcipadzwtnheslnvxjobmkfee
uqciyanzwtnheslgvxjoimkfyr
uqcipadqwtnheswghxjobmkfyr
uycipadzwtnheslovxjobmofyr
uqcipadzwtnheslgvxcozmxfyr
uqmipadzwtnxezlgvxjobmkfyr
uqcipadzftnheslgvxjotmkffr
aqcipaizwtnhesagvxjobmkfyr
uqcipcdzwtnheslgoajobmkfyr
uqcypadgwtnhesbgvxjobmkfyr
uqcipcdzwtnheslgvxjebmkfyb
uhcvpadzwtnheslgvxjobzkfyr
uqcipadzwtnpesagvxmobmkfyr
uqcipadzwtnidslgvxjobmkfor
uqcipadkwtnhesigvxjzbmkfyr
uqcypadlwtnheslsvxjobmkfyr
qqcipadzwtnheswgvxjobmkoyr
uqcipadzwtnheslgvxjhbmmcyr
uqcipadzwtnhesogvxjormkfmr
uqcipadzwtnhetcgvxgobmkfyr
"""
