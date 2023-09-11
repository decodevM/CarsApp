//
//  CarModelsGroupBoxView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct CarModelsGroupBoxView: View {
    let car: CarModel
    var body: some View {
        GroupBox {
            DisclosureGroup("Car models") {
                ForEach(0 ..< car.models.count,id: \.self){index in
                    Divider()
                    HStack{
                        Text("Model \(index+1):")
                        Spacer()
                        Text(car.models[index])
                    }.padding(.vertical,2)
                }
            }
            .foregroundColor(car.gradientColors[0])
        }
    }
}

struct CarModelsGroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CarModelsGroupBoxView(car: carsData[0])
    }
}
