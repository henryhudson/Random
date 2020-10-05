//
//  BarChart.swift
//  BarChartsHWS
//
//  Created by Henry Hudson on 05/10/2020.
//

import SwiftUI

struct BarChart: View {
    let dataPoints: [DataPoint]
    let maxValue: Double
    
    init(dataPoints: [DataPoint]) {
        self.dataPoints = dataPoints
        
        let highestPoint = dataPoints.max { $0.value < $1.value }
        maxValue = highestPoint?.value ?? 1
    }
    
    var body: some View {
        ZStack {
            VStack {
                ForEach( 1...10, id: \.self) { _ in
                    Divider()
                    Spacer()
                }
            }
            
            HStack {
                VStack {
                    ForEach((1...10).reversed(), id: \.self) { i in
                        Text(String(Int( maxValue / 10 * Double(i) )))
                            .padding(.horizontal)
                            .animation(nil)
                        Spacer()
                    }
                }
                
                ForEach(dataPoints) { data in
                    VStack {
                        Rectangle()
                            .fill(data.color)
                            .scaleEffect(y: CGFloat(data.value / maxValue), anchor: .bottom)
                        
                        Text(data.title)
                            .bold()
                            .padding(.bottom)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart(dataPoints: [DataPoint(id: 1, value: 10, color: .red, title: "Yes"),
                              DataPoint(id: 2, value: 20, color: .yellow, title: "no"),
                              DataPoint(id: 3, value: 30, color: .green, title: "maybes"),
                              DataPoint(id: 4, value: 40, color: .blue, title: "No Ans")])
    }
}
