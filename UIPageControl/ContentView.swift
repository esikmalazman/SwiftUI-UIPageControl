//
//  ContentView.swift
//  UIPageControl
//
//  Created by Ikmal Azman on 14/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentPageIndex : Int = 0
    
    var body: some View {
        VStack {
            ZStack {
                if currentPageIndex == 0 {
                    Image("image1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300)
                    
                    
                } else if currentPageIndex == 1 {
                    Image("image2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300)
                    
                    
                } else {
                    Image("image3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300)
                }
                
            }
            
            PageControl(currentPageIndex: currentPageIndex, numberOfPages: 3)
            
            HStack {
                Button {
                    if currentPageIndex != 0 {
                        currentPageIndex = currentPageIndex - 1
                    }
                } label: {
                    Text("Previous")
                    
                }
                .buttonStyle(.borderless)
                .padding()
                
                Button {
                    if currentPageIndex < 3 {
                        currentPageIndex = currentPageIndex + 1
                    }
                } label: {
                    Text("Next")
                    
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            
        }
        .animation(.spring())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
