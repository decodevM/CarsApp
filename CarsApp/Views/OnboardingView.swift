//
//  ContentView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct OnboardingView: View {
    
    let cars: [CarModel] = carsData
    
    var body: some View {
        TabView {
            ForEach(cars) { car in
                CarCardView(car: car)
                    .cornerRadius(20)
                    .padding(.horizontal,15)
            }
        }
        
        .tabViewStyle(.page)
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
