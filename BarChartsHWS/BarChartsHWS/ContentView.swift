//
//  ContentView.swift
//  BarChartsHWS
//
//  Created by Henry Hudson on 30/08/2020.
//

import SwiftUI




struct ContentView: View {
    @State private var redAmount = Double.random(in: 10...100 )
    @State private var yellowAmount = Double.random(in: 10...100 )
    @State private var greenAmount = Double.random(in: 10...100 )
    @State private var blueAmount = Double.random(in: 10...100 )
    
    var data: [DataPoint] {
        [
            DataPoint(id: 1, value: redAmount, color: .red, title: "Yes"),
            DataPoint(id: 2, value: yellowAmount, color: .yellow, title: "no"),
            DataPoint(id: 3, value: greenAmount, color: .green, title: "maybes"),
            DataPoint(id: 4, value: blueAmount, color: .blue, title: "No Ans")
        ]
    }
    
    var body: some View {
        BarChart(dataPoints: data)
            .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                withAnimation {
                    redAmount = Double.random(in: 10...100 )
                    yellowAmount = Double.random(in: 10...100 )
                    greenAmount = Double.random(in: 10...100 )
                    blueAmount = Double.random(in: 10...100 )
                }
            })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
