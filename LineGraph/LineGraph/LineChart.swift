//
//  LineChart.swift
//  LineGraph
//
//  Created by Henry Hudson on 05/10/2020.
//

import SwiftUI

struct LineChart: View {
    let dataPoints: [DataPoint]
    var lineColor = Color.primary
    var lineWidth: CGFloat = 2
    
    var pointColor = Color.red
    var pointSize: CGFloat = 5
    
    var body: some View {
        ZStack {
            if lineColor != .clear {
                LineChartShape(dataPoints: dataPoints, pointSize: pointSize, drawingLines: true)
                    .stroke(lineColor, lineWidth: lineWidth)
            }
            
            if pointColor != .clear {
                LineChartShape(dataPoints: dataPoints, pointSize: pointSize, drawingLines: false)
                    .fill(pointColor)
            }
        }
    }
}

//struct LineChart_Previews: PreviewProvider {
//    static var previews: some View {
//        LineChart()
//    }
//}
