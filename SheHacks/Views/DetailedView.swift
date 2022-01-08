//
//  DetailedView.swift
//  SheHacks
//
//  Created by Jas Lamba on 2022-01-07.
//

import SwiftUI
import WebKit

struct DetailedView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "www.google.ca")
    }
}
