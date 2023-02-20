//
//  PageControl.swift
//  UIPageControl
//
//  Created by Ikmal Azman on 14/02/2023.
//

import UIKit
import SwiftUI

struct PageControl : UIViewRepresentable {
    
    var currentPageIndex : Int = 0
    var numberOfPages : Int = 0
    
    
    /// Create UIView object and configure the initial state
    /// - Returns: UIPageControl
    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.numberOfPages = numberOfPages
        
        return pageControl
    }
    
    /// Update the state of UIKit view based on new info given from SwiftUI
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
}
