//
//  PartsView.swift
//  Otoku
//
//  Created by 長谷部颯汰 on 2022/03/23.
//

import SwiftUI

struct PartsView: View {
    @State var text: String
    @State var textHeight: CGFloat = 20
       var body: some View {
           VStack{
               TextEditor(text: $text)
                   .font(.system(.title))
                   .frame(width: 300 ,height: max(40,textHeight))
                   .border(Color.black, width: 1)
                   //onPreferenceChangeの変数としてValueを自己参照
           }.onPreferenceChange(ViewHeightKey.self) { textHeight = $0 }
           }
        }


struct PartsView_Previews: PreviewProvider {
    static var previews: some View {
        PartsView(text: "ha")
    }
}

struct ViewHeightKey: PreferenceKey {
    static var defaultValue: CGFloat { 0 }  //static =静的 　//dafaultvalueはpreferenceに何も入らなかった時の設定値
    //reduceは、子ビューから親ビューへの変換処理
    static func reduce(value: inout Value, nextValue: () -> Value) { //inoutは参照渡し
        
        //PreferenceKeyにおいてvalueとnextValueは設定する。
        value = value + nextValue()
    }
}
