//
//  FirstView.swift
//  RouterSwitchSample
//
//  Created by Yusuke Hasegawa on 2021/09/03.
//

import SwiftUI

struct FirstView: View {
    
    var onClick: (String) -> Void
    
    var body: some View {
        VStack(spacing: 32) {
            Text("First")
                .font(.title)
            Button("Next") {
                onClick("From first")
            }
        }        
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(onClick: { _ in })
    }
}
