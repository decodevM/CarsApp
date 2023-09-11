//
//  HomeCarsView.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

struct HomeCarsView: View {
    let cars: [CarModel] = carsData
    @State var isPresented: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(cars) { car in
                    NavigationLink {
                        CarDetailsView(car: car)
                    } label: {
                        CarCellView(car: car)
                    }

                }
            }
            .navigationTitle("All Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                isPresented.toggle()
            }, label: {
                Image(systemName: "slider.horizontal.3")
                   
            }).sheet(isPresented: $isPresented){
                SettingsView()
                    .presentationDetents([.large])
            })
        }
        
    }
}

struct HomeCarsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCarsView()
    }
}
