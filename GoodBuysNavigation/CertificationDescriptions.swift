//
//  CertificationDescriptions.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/7/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import UIKit

class CertificationDescriptions: NSObject {
//    UIImage(named: "betterCotton")!,
//    UIImage(named: "bluesign")!,
//    UIImage(named: "canopy")!,
//    UIImage(named: "carbonTrust")!,
//    UIImage(named: "caregora")!,
//    UIImage(named: "ccba")!,
//    UIImage(named: "cleanClothes")!,
//    UIImage(named: "crueltyFree")!,
//    UIImage(named: "ethicalTrading")!,
//    UIImage(named: "fairmined")!,
//    UIImage(named: "fairTrade")!,
//    UIImage(named: "labourOrg")!,
//    UIImage(named: "lwgStandards")!,
//    UIImage(named: "organic")!,
//    UIImage(named: "rds")!,
//    UIImage(named: "recycled")!,
//    UIImage(named: "rws")!,
//    UIImage(named: "socialAccountability")!,
//    UIImage(named: "soilAssociation")!,
//    UIImage(named: "swan")!,
//    UIImage(named: "vegan")!,
//    UIImage(named: "vegetarian")!,
//    UIImage(named: "workplaceConditions")!,
//    UIImage(named: "wrap")!
//
    
    public func getCertDescription(functionName: String)->String {
        if(functionName == "betterCotton" ){
            return betterCotton
        }
        if(functionName == "bluesign" ){
            return blueSign
        }
        if(functionName == "canopy" ){
            return canopyStyle
        }
        if(functionName == "carbonTrust" ){
            return carbonTrust
        }
        if(functionName == "caregora" ){
            return careGora
        }
        if(functionName == "ccba" ){
            return CCB
        }
        if(functionName == "cleanClothes" ){
            return cleanClothes
        }
        if(functionName == "crueltyFree" ){
            return ""
        }
        if(functionName == "ethicalTrading" ){
            return ""
        }
        if(functionName == "fairmined" ){
            return ""
        }
        
        if(functionName == "fairTrade" ){
            return fairTrade
        }
        if(functionName == "labourOrg" ){
            return ""
        }
        if(functionName == "lwgStandards" ){
            return leatherWorkingGroup
        }
        if(functionName == "organic" ){
            return ""
        }
        if(functionName == "rds" ){
            return responsibleDown
        }
        if(functionName == "rws" ){
            return responsibleWool
        }
        if(functionName == "socialAccountability" ){
            return sa800
        }
        if(functionName == "soilAssociation" ){
            return soilOrganic
        }
        if(functionName == "swan" ){
            return nordicSwan
        }
        if(functionName == "vegan" ){
            return ""
        }
        
        if(functionName == "wrap" ){
            return wrap
        }
        
        if(functionName == "vegetarian" ){
            return ""
        }
        if(functionName == "workplaceConditions" ){
            return workplaceCondition
        }
        else {
            return "No information available for this certification"
        }
    }
    
    
    public let fairTrade = "If a company is FairTrade, it is required to pay sustainable prices (which must never fall lower than the market price), Fairtrade addresses the injustices of conventional trade, which traditionally discriminates against the poorest, weakest producers. It enables them to improve their position and have more control over their lives."

    public let betterCotton = "The Better Cotton Initiative exists to make global cotton production better for the people who produce it, better for the environment it grows in, and better for the sector’s future. BCI connects people and organisations from across the cotton sector, from field to store, to promote measurable and continuing improvements for the environment, farming communities and the economies of cotton-producing areas."
    
    public let blueSign = "The bluesign® SYSTEM is focused on people, the environment and resources. Through its comprehensive approach based on Input Stream Management, the bluesign® SYSTEM reduces the textile industry’s impacts on people and the environment, ensures responsible use of resources and guarantees the highest degree of consumer protection. The strictest criteria and analysis for on-site system implementation motivate companies along the entire value chain to improve their sustainability performance with BLUESIGN."
    
    public let canopyStyle = "Canopy works with the forest industry’s biggest customers and their suppliers to develop business solutions that protect these last frontier forests. Depending on the region, 35 to 60 percent of the world’s forests continue to be felled to manufacture the products we consume, from tee shirts to toilet paper. The loss of these critical forests puts species, communities and our climate at risk. Best known for greening the Harry Potter book series globally, Canopy catalyzes the development of tangible alternatives and is a key player behind some of the world’s most innovative conservation initiatives."

    public let carbonTrust = "The Carbon Trust Carbon Standard is only awarded to companies and organisations who measure and reduce their carbon emissions year on year The Carbon Trust looks at current and future sustainability challenges and works with business and organisations to develop sustainable strategies to deliver savings."
    
    public let careGora = "Caregora™ is indeed the first responsible and reliable angora fibre, whose care in its breeding is managed with total respectn not just to meet the European animal welfare standards (98/58/EC Directive of the European Community), but it also complies with the even stricter “Animal Welfare Code of Recommendations for the welfare of livestock” recommended and promoted by DEFRA (the British Department for Environment, Food and Rural Affairs). Compliance with this standard has been verified by SGS (formerly Société Générale de Surveillance) an multinational company headquartered in Geneva, Switzerland which provides inspection, verification, testing and certification services."
    
    public let cleanClothes = "The Clean Clothes Campaign is dedicated to advancing the interests of workers in the apparel and sportswear industry and the concerns of consumers who purchase products made and sold by this industry. The Campaign seeks an end to the oppression, exploitation and abuse of workers in this industry, most of who are women. The code, which is a concise statement of minimum standards with respect to labour practices, is meant to be accompanied by a commitment by the companies adopting it to take positive actions in applying it."
    
    public let CCB = "The CCB Standards identify land management projects that deliver net positive benefits for climate change mitigation, for local communities and for biodiversity. The CCB Standards can be applied to any land management project, including projects that reduce greenhouse gas emissions from deforestation and forest degradation or from avoided degradation of other ecosystems, and projects that remove carbon dioxide by sequestering carbon (e.g., reforestation, afforestation, revegetation, forest restoration, agroforestry and sustainable agriculture) or other land management, from design through implementation and monitoring."
    
    public let globalRecylce = "The GRS is intended to meet the needs of companies looking to verify the recycled content of their products (both finished and intermediate) and to verify responsible social, environmental and chemical practices in their production. The objectives of the GRS are to define requirements to ensure accurate content claims and good working conditions, and that harmful environmental and chemical impacts are minimised. This includes companies in ginning, spinning, weaving and knitting, dyeing and printing and stitching in more than 50 countries."
    
    public let leatherWorkingGroup = "The Leather Working Group (LWG) is a not-for-profit membership organisation for stakeholders across the leather supply chain. Since 2005, we have developed audit protocols designed to certify leather manufacturers according to their environmental compliance and performance capabilities."
    
    public let nordicSwan = "The Nordic Swan Ecolabel works to reduce the environmental impact from production and consumption of goods – and to make it easy for consumers and professional buyers to choose the environmentally best goods and services."
    
    public let responsibleDown = "The Responsible Down Standard aims to ensure that down and feathers come from animals that have not been subjected to an unnecessary harm. It is our hope that the standard can be used to reward and influence the down and feather industry to incentivize practices that respect the humane treatment of ducks and geese"
    
    public let responsibleWool = "As consumers become more aware of where their wool comes from, brands and retailers need to ensure their wool suppliers use ethical and sustainable sourcing practices. The Responsible Wool Standard (RWS) is a voluntary program that helps sheep farmers meet consumer, retailer, and brand demands. The standard certifies they meet rigorous animal welfare and land management requirements. The driving brands and industry organizations behind the standard include H&M, Kering, Patagonia, and Outdoor Industry Association."
    
    public let sa800 = "The SA8000 Standard is the world's leading social certification program. It provides a holistic framework allowing organizations of all types, in any industry, and in any country to demonstrate their dedication to the fair treatment of workers."
    
    public let soilOrganic = "Soil Association standards set strict benchmarks for organic food production, packaging, animal welfare, wildlife conservation, residues and additives to reassure the buying public over the quality of products labelled organic. It was an early adopter of organic production standards to exclude nanomaterials."
    
    public let workplaceCondition = "Anchored in Intertek’s extensive social compliance expertise, WCA has emerged as a powerful tool for evaluating, benchmarking and continuously improving supplier workplace conditions. The program is supported by a web-based platform that automates and streamlines the audit process, increasing efficiencies for all supply chain partners."
    
    public let wrap = "WRAP is an independent, objective, non-profit team of global social compliance experts dedicated to promoting safe, lawful, humane, and ethical manufacturing around the world through certification and education."
    
    public let zq = "The ZQ programme ensures healthy animals by adhering to five basic freedoms. Growers supplying ZQ wool are required to provide and care for their livestock in accordance with these freedoms"
    

    
}
