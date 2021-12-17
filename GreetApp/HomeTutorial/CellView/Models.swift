//
//  Models.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class cHeader: NSObject {

    var cheaderText: String?
    var cphotos: [cPhoto]?
    
        static func sampleTestCategories() -> [cHeader] {

            //logic Header 1
            let CheeseSteaksAppsCategory = cHeader()
            CheeseSteaksAppsCategory.cheaderText = "Sports"
            
            var cphotos = [cPhoto]()
            
            //logic Photo 1
            let CheeseSteaksMenu1 = cPhoto()
            CheeseSteaksMenu1.cImageName = "step-1"
            CheeseSteaksMenu1.cLabel = "Soccer"
            CheeseSteaksMenu1.cPrice = NSNumber(floatLiteral: 8.99)
            
            cphotos.append(CheeseSteaksMenu1)
            
            let CheeseSteaksMenu2 = cPhoto()
            CheeseSteaksMenu2.cImageName = "step-2"
            CheeseSteaksMenu2.cLabel = "Football"
            CheeseSteaksMenu2.cPrice = NSNumber(floatLiteral: 5.99)
            
            cphotos.append(CheeseSteaksMenu2)
            
            let CheeseSteaksMenu3 = cPhoto()
            CheeseSteaksMenu3.cImageName = "step-3"
            CheeseSteaksMenu3.cLabel = "Basketball"
            CheeseSteaksMenu3.cPrice = NSNumber(floatLiteral: 2.99)
            
            cphotos.append(CheeseSteaksMenu3)
            
            let  CheeseSteaksMenu4 = cPhoto()
            CheeseSteaksMenu4.cImageName = "step-4"
            CheeseSteaksMenu4.cLabel = "Baseball"
            CheeseSteaksMenu4.cPrice = NSNumber(floatLiteral: 8.99)
            
            
            cphotos.append(CheeseSteaksMenu4)
            
            let CheeseSteaksMenu5 = cPhoto()
            CheeseSteaksMenu5.cImageName = "Step-5"
            CheeseSteaksMenu5.cLabel = "Tennis"
            CheeseSteaksMenu2.cPrice = NSNumber(floatLiteral: 5.99)
            
            
            cphotos.append(CheeseSteaksMenu5)
            
            CheeseSteaksAppsCategory.cphotos = cphotos
            
            return [CheeseSteaksAppsCategory]

//    return [TestNewAppsCategory, DemoNewAppsCategory, ExampleNewAppsCategory]
    
    }

}


class cPhoto: NSObject {

    var cheaderText: String?
    var cImageName: String?
    var cLabel: String?
    var cPrice: NSNumber?


}

// new cell2


class sHeader: NSObject {

    var sheaderText: String?
    var sphotos: [sPhoto]?
    

        static func sampleTestCategories() -> [sHeader] {

            //logic Header 1
            let SaladAppsCategory = sHeader()
            SaladAppsCategory.sheaderText = "Home"
            
            var sphotos = [sPhoto]()
            
            //logic Photo 1
            let SaladMenu1 = sPhoto()
            SaladMenu1.sImageName = "Tacos1"
            SaladMenu1.sLabel = "VENTURE"
            SaladMenu1.sPrice = NSNumber(floatLiteral: 8.99)
            
            sphotos.append(SaladMenu1)
            
            let SaladMenu2 = sPhoto()
            SaladMenu2.sImageName = "Sopes1"
            SaladMenu2.sLabel = "TOKE"
            SaladMenu2.sPrice = NSNumber(floatLiteral: 2.99)
            
            sphotos.append(SaladMenu2)
            
            let SaladMenu3 = sPhoto()
            SaladMenu3.sImageName = "Chilaquiles1"
            SaladMenu3.sLabel = "JOSE"
            SaladMenu3.sPrice = NSNumber(floatLiteral: 5.99)
            
            sphotos.append(SaladMenu3)
            
            let SaladMenu4 = sPhoto()
            SaladMenu4.sImageName = "Chilereneno1"
            SaladMenu4.sLabel = "KEVIN"
            SaladMenu4.sPrice = NSNumber(floatLiteral: 2.99)
            
            sphotos.append(SaladMenu4)
            
            let SaladMenu5 = sPhoto()
            SaladMenu5.sImageName = "Pozole1"
            SaladMenu5.sLabel = "NORBERT"
            SaladMenu5.sPrice = NSNumber(floatLiteral: 6.99)
            
            sphotos.append(SaladMenu5)
            
            SaladAppsCategory.sphotos = sphotos
            
            return [SaladAppsCategory]
            
            //    return [TestNewAppsCategory, DemoNewAppsCategory, ExampleNewAppsCategory]
    
    }

}


class sPhoto: NSObject {

    var sheaderText: String?
    var sImageName: String?
    var sLabel: String?
    var sPrice: NSNumber?

}


// new cell3

class mHeader: NSObject {

    var mheaderText: String?
    var mphotos: [mPhoto]?

        static func sampleTestCategories() -> [mHeader] {

            //logic Header 1
            let MexicanAppsCategory = mHeader()
            MexicanAppsCategory.mheaderText = "Electronics"
            
            var mphotos = [mPhoto]()
            
            //logic Photo 1
            let MexicanMenu1 = mPhoto()
            MexicanMenu1.mImageName = "fist"
            MexicanMenu1.mLabel = "HOW"
            MexicanMenu1.mPrice = NSNumber(floatLiteral: 6.99)
            
            
            mphotos.append(MexicanMenu1)
            
            let MexicanMenu2 = mPhoto()
            MexicanMenu2.mImageName = "RaidAthletic"
            MexicanMenu2.mLabel = "DOES"
            MexicanMenu2.mPrice = NSNumber(floatLiteral: 5.99)
            
            mphotos.append(MexicanMenu2)
            
            let MexicanMenu3 = mPhoto()
            MexicanMenu3.mImageName = "cupcake-512"
            MexicanMenu3.mLabel = "IT"
            MexicanMenu3.mPrice = NSNumber(floatLiteral: 8.99)
            
            mphotos.append(MexicanMenu3)
            
            let MexicanMenu4 = mPhoto()
            MexicanMenu4.mImageName = "warriors"
            MexicanMenu4.mLabel = "LOOK"
            MexicanMenu4.mPrice = NSNumber(floatLiteral: 1.99)
            
            mphotos.append(MexicanMenu4)
            
            let MexicanMenu5 = mPhoto()
            MexicanMenu5.mImageName = "mexico"
            MexicanMenu5.mLabel = "?"
            MexicanMenu5.mPrice = NSNumber(floatLiteral: 0.99)
            
            mphotos.append(MexicanMenu5)
        
    MexicanAppsCategory.mphotos = mphotos
            
            return [MexicanAppsCategory]

//    return [TestNewAppsCategory, DemoNewAppsCategory, ExampleNewAppsCategory]
    
    }

}


class mPhoto: NSObject {

    var mheaderText: String?
    var mImageName: String?
    var mLabel: String?
    var mPrice: NSNumber?

}

