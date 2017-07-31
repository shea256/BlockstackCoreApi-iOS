//
//  AuthDataTypes.swift
//  BlockstackCoreApi-iOS
//
//  Created by lsease on 7/31/17.
//

import Foundation

public struct AppManifest : Serializable
{
    public var shortName : String?
    public var name : String?
    public var iconUrl : String?
    public var themeColorHex : String = "#000000"
    public var backgroundColorHex : String = "#ffffff"
}

public struct AuthResponse : Serializable
{
    public var username : String?
    public var profile : Profile
    public var appPrivateKey : String
    public var coreSessionToken : String
    public var authResponseToken : String
    
    public struct Profile : Serializable
    {
        public var account : [Account] = []
        public var givenName : String?
        public var familyName : String?
        public var description : String?
        public var image : [Image] = []
        public var address : Address?
        
        public struct Account : Serializable
        {
            public var identifier : String
            public var service : String
            public var contentUrl : String
        }
        
        public struct Image : Serializable
        {
            public var name : String
            public var contentUrl : String
        }
        
        public struct Address : Serializable
        {
            public var addressLocality : String
            public var addressCountry : String
        }
    }
}