//
//  DisplayGridViewModel.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

@MainActor final class DisplayGridViewModel: ObservableObject {
    /*In case we need to perform an action once selecting a cell from grid view this code will help to achive it*/
//    var selectedObject: MediaCoverage? {
//        didSet { isShowingDetail = true }
//    }
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    /*In case if we need to navigate a detail page from here this code will help to handle it*/
//    @Published var isShowingDetail = false
    
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var ListData: [MediaCoverage] = []
    
    //limit
    func GetMediaCoverages(limit: Int) {
        isLoading = true
        GetMediaAPI().GetMediaByPage(param: ["limit": limit]) {
            [weak self] responce, error in
            guard let weakSelf = self else { return }
            weakSelf.isLoading = false
            guard error == nil else {
                print("From main class Error",error?.message ?? "")
                weakSelf.alertItem = AlertContext.invalidError
                return
            }
            guard let listValues = responce else { return }
            DispatchQueue.main.async {
                weakSelf.ListData = listValues
            }
        }
    }
    
}
