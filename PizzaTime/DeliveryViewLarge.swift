//
//  DeliveryViewLarge.swift
//  WidgetDemo
//
//  Created by Steven Lipton on 10/25/20.
//
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

struct DeliveryViewLarge: View {
    @Binding var stage:Int
    
    var body: some View {
        ZStack{
            Image("\(stage)_Stage").resizable().scaledToFill()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Huli Chicken Pizza")
                            .font(.body).bold()
                            .foregroundColor(Color("cream"))
                            .padding(.top)
                            // don't need the pizza name on first or last stage.
                            .opacity((stage == 0 || stage == 7 ? 0 : 1))
                        Text(stages[stage])
                            .font(.title).bold()
                            .minimumScaleFactor(0.8)
                            .padding()
                    }
                    .background(Color("ochre"))
                    
                }.padding(8)
                .padding(.trailing,12)
            }
        }
    }
}
struct DeliveryViewLarge_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DeliveryViewLarge(stage: .constant(1)).previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}

