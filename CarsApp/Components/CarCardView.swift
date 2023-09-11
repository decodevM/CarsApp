//
//  CarCardView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct CarCardView: View {
    let car: CarModel
    @State private var isAnimating: Bool = false
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some View {
        VStack(spacing: 50){
            
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1: 0.5)
                
                
            Text(car.title)
                .font(.title)
                .fontWeight(.heavy)
                .padding()
                .offset(y: isAnimating ? 0 : 300)
                
            
            Text(car.headline)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
                .offset(y: isAnimating ? 0 :600)
            
            Button {
                isOnboarding.toggle()
            } label: {
                Image(systemName: "arrow.right.circle")
                Text("Start")
                    
            }
            .font(.title)
            .foregroundColor(.white)
            .padding(.horizontal,80)
            .padding(.vertical,10)
            .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: car.gradientColors, startPoint: .bottomTrailing, endPoint: .topLeading)))
            .padding()
            .offset(y: isAnimating ? 0 : 900)
            

        }
        .animation(.easeInOut(duration: 0.8), value: isAnimating)
        .foregroundColor(.white)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: car.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear{
            isAnimating = true
        }
        .onDisappear{
            isAnimating = false
        }
    }
}

struct CarCardView_Previews: PreviewProvider {
    static var previews: some View {
        CarCardView(car: carsData[0])
    }
}
