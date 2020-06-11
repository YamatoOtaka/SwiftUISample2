//
//  ContentView.swift
//  SwiftUISample2
//
//  Created by 大高倭 on 2020/06/08.
//  Copyright © 2020 YamatoOtaka. All rights reserved.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(albumlist, id: \.id) { album in
                                AlbumCard(album: album)
                            }
                        }.frame(height: 400)
                    }
                    Text("Top Albums")
                        .font(.largeTitle)
                        .bold()
                    VStack {
                        /// https://docs.swift.org/swift-book/ReferenceManual/Expressions.html#grammar_key-path-expression
                        ForEach(albumlist, id: \.id) { album in
                            TopAlbumCard(album: album)
                        }
                    }
                }.padding()
            }.navigationBarTitle("My Albums")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
