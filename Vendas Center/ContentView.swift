//
//  ContentView.swift
//  Vendas Center
//
//  Created by Anderson Job on 24/04/24.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Define a cor de fundo como preto
            
            WebView(url: URL(string: "https://vendas.center")!)
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.bounces = false
        webView.scrollView.isScrollEnabled = true // Ativar rolagem
        webView.scrollView.showsHorizontalScrollIndicator = false // Ocultar indicador de rolagem horizontal
        webView.scrollView.showsVerticalScrollIndicator = false // Ocultar indicador de rolagem vertical
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
