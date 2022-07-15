//
//  CellStructure.swift
//  TableViewWithJason
//
//  Created by Codewalla on 15/07/22.
//

import Foundation


struct CellStruct:Codable
{
    let access_type:String
    let company_id:Int
    let department_id:Int
    let user_name:String
    let global_id:String
    let profile_image_url:String
    let is_editable:String
    let location_id:Int
    let manager_id:Int
    let company_name:String
    let first_name:String
    let email:String
    let status:String
}
