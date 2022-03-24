//
//  PartsView.swift
//  Otoku
//
//  Created by 長谷部颯汰 on 2022/03/23.
//

import SwiftUI

struct PartsView: View {
    @State private var Operation: String = ""
    @State var text: String = """
 """
    var body: some View {
        VStack {
                TextEditor(text: $text)
                .frame(width: 300, height: 200)
                .border(Color.black, width:1)
                    
    
            

                
        }
    }
}

struct PartsView_Previews: PreviewProvider {
    static var previews: some View {
        PartsView()
    }
}
