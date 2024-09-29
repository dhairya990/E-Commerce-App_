//
//  Products.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import Foundation
struct Product: Identifiable{
    var id = UUID()
    var name:String
    var image:String
    var description:String
    var supplier:String
    var price:Int
    var width:String
    var height:String
    var diameter:String
}

var productList = [
    Product(name: "Red fabric Sofa", image: "a", description: "Furniture refers to movable objects designed to support various human activities, such as seating, eating, sleeping, or storing belongings. It plays both functional and aesthetic roles in homes, offices, and public spaces. There are various types of furniture, including seating options like chairs and sofas, storage units such as wardrobes and shelves, tables for dining and work, and beds for sleeping. Furniture is crafted from different materials, such as wood, metal, glass, plastic, and fabrics like leather for upholstery. Each material offers its unique benefits, with wood providing a classic appeal, metal offering a modern touch, and glass adding an element of elegance ", supplier: "KDM", price: 340,width: "200",height: "300",diameter: "250"),
    Product(name: "White Steel Chair", image: "b", description: "The design of furniture can vary widely, from traditional, ornate pieces made of heavy wood to sleek, minimalist modern designs that use metal and glass. Other popular styles include rustic furniture that emphasizes raw, natural materials, and industrial designs that combine metals with reclaimed wood. Furniture is essential for creating a comfortable and functional living space. Chairs and beds provide comfort, storage units help organize belongings, and tables and desks create spaces for dining and work", supplier: "FLIPCART", price: 500,width: "200",height: "300",diameter: "250"),
    Product(name: "Black floor lamp", image: "c", description: "The design of furniture can vary widely, from traditional, ornate pieces made of heavy wood to sleek, minimalist modern designs that use metal and glass. Other popular styles include rustic furniture that emphasizes raw, natural materials, and industrial designs that combine metals with reclaimed wood. Furniture is essential for creating a comfortable and functional living space. Chairs and beds provide comfort, storage units help organize belongings, and tables and desks create spaces for dining and work", supplier: "KDM", price: 250,width: "200",height: "300",diameter: "250"),
    Product(name: "dhairya", image: "d", description: "The design of furniture can vary widely, from traditional, ornate pieces made of heavy wood to sleek, minimalist modern designs that use metal and glass. Other popular styles include rustic furniture that emphasizes raw, natural materials, and industrial designs that combine metals with reclaimed wood. Furniture is essential for creating a comfortable and functional living space. Chairs and beds provide comfort, storage units help organize belongings, and tables and desks create spaces for dining and work", supplier: "AMAZON", price: 600,width: "200",height: "300",diameter: "250"),
    Product(name: "dhairya", image: "a", description: "The design of furniture can vary widely, from traditional, ornate pieces made of heavy wood to sleek, minimalist modern designs that use metal and glass. Other popular styles include rustic furniture that emphasizes raw, natural materials, and industrial designs that combine metals with reclaimed wood. Furniture is essential for creating a comfortable and functional living space. Chairs and beds provide comfort, storage units help organize belongings, and tables and desks create spaces for dining and work", supplier: "MYNTRA", price: 100,width: "200",height: "300",diameter: "250"),
    Product(name: "dhairya", image: "b", description: "The design of furniture can vary widely, from traditional, ornate pieces made of heavy wood to sleek, minimalist modern designs that use metal and glass. Other popular styles include rustic furniture that emphasizes raw, natural materials, and industrial designs that combine metals with reclaimed wood. Furniture is essential for creating a comfortable and functional living space. Chairs and beds provide comfort, storage units help organize belongings, and tables and desks create spaces for dining and work", supplier: "KDM", price: 760,width: "200",height: "300",diameter: "250")
]


//003049
