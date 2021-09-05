//
//  ContentView.swift
//  RouterSwitchSample
//
//  Created by Yusuke Hasegawa on 2021/09/03.
//

import SwiftUI

enum ContentState {
    case first
    case second(text: String)
    case third
}

struct ContentView: View {
    
    @State var state: ContentState = .first
    
    var body: some View {
        NavigationView {
            switch state {
            case .first:
                FirstView { text in
                    state = .second(text: text)
                }
            case .second(let text):
                SecondView(text: text) {
                    state = .third
                }
            case .third:
                ThirdView(state: $state)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
