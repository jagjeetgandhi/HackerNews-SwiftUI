//
//  description.swift
//  HackerNews
//
//  Created by jagjeet on 17/07/20.
//  Copyright © 2020 jagjeet. All rights reserved.
//

import SwiftUI
import WebKit

struct description: View {
    var url:String?
    
    var body: some View {
        WebView(urlstring: url)
    }
}

struct description_Previews: PreviewProvider {
    static var previews: some View {
        description(url: "https://www.google.com")
    }
}

