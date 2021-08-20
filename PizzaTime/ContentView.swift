//
//  ContentView.swift
//  PizzaTime
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


struct ContentView: View {
    enum ViewSize:String{
        case small,medium,large
    }
    @State var viewSize = ViewSize.large
    @State var stage:Int = 0
    func orderAction(){
        //actions for the widget
       
        //actions for the app
        stage = (stage + 1) % 8
    }
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("ochre"), Color("cream")]), startPoint: .leading, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
               Text("Huli Pizza Order")
                .foregroundColor(Color("cream"))
                .font(.largeTitle)
                .fontWeight(.heavy)
                Picker("Size", selection: $viewSize) {
                    Text("Small").tag(ViewSize.small)
                    Text("Medium").tag(ViewSize.medium)
                    Text("Large").tag(ViewSize.large)
                }.pickerStyle(SegmentedPickerStyle())
                
                switch viewSize{
                case .small:
                    DeliveryView(stage: self.$stage).aspectRatio(1, contentMode: .fit)
                        .frame(width:148)
                        .cornerRadius(10)
                            .padding()
                case .medium:
                    DeliveryViewMedium(stage: self.$stage).cornerRadius(10)
                        .padding()
                case .large:
                    DeliveryViewLarge(stage: self.$stage).aspectRatio(1, contentMode: .fit).cornerRadius(10)
                        .padding()
                }
                
                Button(action:{orderAction()}){
                    Text("Order Pizza")
                        .foregroundColor(Color("cream"))
                        .font(.title)
                        .padding()
                }
                .frame(maxWidth:.greatestFiniteMagnitude)
                .cornerRadius(10)
                .background(Color("blue"))
                .padding()
                .shadow(color: Color("blue").opacity(0.7), radius: 10, x: 10, y:10)

                Spacer()

            }.padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
