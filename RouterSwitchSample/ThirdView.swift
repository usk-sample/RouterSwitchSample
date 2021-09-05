//
//  ThirdView.swift
//  RouterSwitchSample
//
//  Created by Yusuke Hasegawa on 2021/09/06.
//

import SwiftUI

struct ThirdView: View {
    
    @Binding var state: ContentState
    
    var body: some View {
        VStack {
            Text("Third View")
            Button("go to First") {
                state = .first
            }
        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(state: .constant(.third))
    }
}
