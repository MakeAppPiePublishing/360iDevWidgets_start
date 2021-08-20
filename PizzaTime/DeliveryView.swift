//
//  DeliveryView.swift
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

struct DeliveryView: View {
    @Binding var stage:Int
    
    var body: some View {
        ZStack{
            Color.green
            Image("\(stage)_Stage").resizable().aspectRatio(1, contentMode: .fit)
            VStack{
                VStack(alignment: .leading){
                    Text("Huli Chicken Pizza")
                }
                .padding(.all,9)
                .font(.caption)
                .foregroundColor(.white)
                .background(ContainerRelativeShape().fill(Color.black).opacity(0.55))
                .padding(8.0)
                // don't need the pizza name on first or last stage.
                .opacity((stage == 0 || stage == 7 ? 0 : 1))
                Spacer()
                HStack {
                    Text(stages[stage])
                        .font(.headline)
                        .bold()
                        .minimumScaleFactor(0.5)
                        .padding([.top, .leading, .bottom], 10.0)
                        .padding([.leading,.trailing])
                }
                .background(ContainerRelativeShape().fill(Color.white).opacity(0.55))
                .padding()
            }
           
        }
    }
}
struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DeliveryView(stage: .constant(1))
            
        }
    }
}
