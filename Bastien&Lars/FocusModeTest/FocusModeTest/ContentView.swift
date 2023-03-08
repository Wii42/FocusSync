//
//  ContentView.swift
//  FocusModeTest
//
//  Created by Lars Wüthrich on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button {
//                let shortcutLocation = URL(
//                    fileURLWithPath: NSString(
//                        "file:///Users/LarsWuethrich/Uni/Informatik/PSE/FocusModeTest/Focus.shortcut"
//                    ).expandingTildeInPath
//                )
//                print(shortcutLocation)
//                let urlPath = Bundle.main.url(forResource: "Focus", withExtension: "shortcut")!
//                print(urlPath)
//                let shortcutImport = URL(string: "shortcuts://import-shortcut?url=file:///Users/LarsWuethrich/Uni/Informatik/PSE/FocusModeTest/Focus.shortcut")!
//                print(shortcutImport)
//                NSWorkspace.shared.open(shortcutImport)
                
                
                let shortcutName = "Focus"
                let shortcutURLString = "file:///Users/LarsWuethrich/Uni/Informatik/PSE/FocusModeTest/Focus.shortcut"
                let escapedShortcutName = shortcutName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                let escapedShortcutURL = shortcutURLString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                let deepLinkURLString = "shortcuts://import-shortcut/?name=\(escapedShortcutName)&url=\(escapedShortcutURL)"
                if let deepLinkURL = URL(string: deepLinkURLString) {
                    NSWorkspace.shared.open(deepLinkURL)
                }
                
                
                
            } label: {
                Text("Import").padding(20)
            }
            Button {
                //https://stackoverflow.com/questions/26704852/osx-swift-open-url-in-default-browser
                //https://medium.com/infonity-tech/shortcut-deeplinking-for-ios-developer-64f75171c7de
                
                let shortcut = URL(string: "shortcuts://x-callback-url/run-shortcut?name=Focus%20to%20Hinweis%202&x-success=shortcutDemo://status=1")!
                NSWorkspace.shared.open(shortcut)
            } label: {
                Text("ON").padding(20)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
