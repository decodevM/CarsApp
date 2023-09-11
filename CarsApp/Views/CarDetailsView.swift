//
//  CarDetailsView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct CarDetailsView: View {
    let car: CarModel
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                HeaderView(car: car)
                
                VStack(alignment: .leading,spacing: 15){
                    Text(car.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[0])
                    
                    Text(car.headline)
                        .font(.title3)
                    
                    
                    CarModelsGroupBoxView(car: car)
                    
                    
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(car.gradientColors[0])
                    
                    Text(car.description)
                    
                    
                    
                    FooterView()
                        .padding(.bottom,20)
                }
                .padding(.horizontal,15)
                .padding(.vertical,10)
            }
        }.ignoresSafeArea()
    }
    
}

struct CarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailsView(car: carsData[0])
    }
}



struct HeaderView: View{
    let car: CarModel
    @State private var isAnimating: Bool = false
    var body: some View{
        ZStack(alignment: .center){
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.5)
                .animation(.easeInOut(duration: 0.8), value: isAnimating)
        }
        .frame(height: 400)
        .background(LinearGradient(colors: car.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear{
            isAnimating = true
        }
    }
    
}

struct FooterView: View {
    var body: some View {
        GroupBox{
            HStack{
                Link("Source: Wikipedia", destination: URL(string: "https://www.wikipedia.org")!)
                
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}
