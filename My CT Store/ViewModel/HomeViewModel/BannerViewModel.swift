//
//  BannerViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct BannerViewModel: Decodable {
    private let banner: Banner
    init(banner: Banner){
        self.banner = banner
    }
    
    func getId() -> String { return String(banner.vendorId) }
    func getImage() -> String {
        return Config.baseURLForImage + (banner.bannerImage.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") 
    }
}
