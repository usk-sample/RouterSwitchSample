//
//  SecondView.swift
//  RouterSwitchSample
//
//  Created by Yusuke Hasegawa on 2021/09/03.
//

import SwiftUI

struct SecondView: View {
    
    var text: String
    var onClick: () -> Void

    var body: some View {
        VStack(spacing: 32) {
            Text("Second")
                .font(.title)
            Text(text)
            Button("Previous") {
                onClick()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(text: "sample", onClick: { })
    }
}
