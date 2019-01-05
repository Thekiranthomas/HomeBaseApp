//
//  SampleAppEndPoints.swift
//  SampleApp
//
//  Created by Kiran Thomas on 29/12/18.
//  Copyright © 2018 HomeBase. All rights reserved.
//

import UIKit

protocol SampleEndPoint {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders { get }
}
