//
//  DisplayGridViewModel.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

final class DisplayGridViewModel: ObservableObject {
    /*In case we need to perform an action once selecting a cell from grid view this code will help to achive it*/
//    var selectedObject: MediaCoverage? {
//        didSet { isShowingDetail = true }
//    }
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    /*In case if we need to navigate a detail page from here this code will help to handle it*/
//    @Published var isShowingDetail = false
    
    @Published var isLodaing = true
    @Published var ListData = MockData.Datas
    
}
