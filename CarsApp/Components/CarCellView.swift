//
//  CarCellView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct CarCellView: View {
    let car: CarModel
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
                .background(LinearGradient(colors: car.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10,x: 2,y: 2)
            
            VStack(alignment: .leading,spacing: 10){
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                Text(car.headline)
                    .lineLimit(3)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CarCellView_Previews: PreviewProvider {
    static var previews: some View {
        CarCellView(car: carsData[0])
    }
}
