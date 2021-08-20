//
//  DeliveryViewMedium.swift
//  PizzaWidget
//
//  Created by Steven Lipton on 10/23/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 13 (Q1 2021) video 02
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn the first steps to making widgets on iOS
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI
import WidgetKit

struct DeliveryViewMedium: View {
    @Binding var stage:Int
   
    var body: some View {
        HStack{
            HStack{
                Image("\(stage)_Stage").resizable().scaledToFit()
                VStack{
                    Text("Huli Chicken Pizza")
                        .font(.body).bold()
                        .foregroundColor(Color("cream"))
                        .padding(.top)
                    // don't need the pizza name on first or last stage.
                    .opacity((stage == 0 || stage == 7 ? 0 : 1))
                    HStack{
                        Text(stages[stage])
                            .font(.title).bold()
                            .minimumScaleFactor(0.8)
                            .padding()
                            Spacer()
                    }
                }

            }.background(Color("ochre"))
            
        }
    }
}
struct DeliveryViewMedium_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DeliveryViewMedium(stage: .constant(1)).previewContext(WidgetPreviewContext(family: .systemMedium))
        }
    }
}

