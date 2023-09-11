//
//  SettingsView.swift
//  CarsApp
//
//  Created by Yacine on 9/11/23.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isOnboarding") private var isOnboarding: Bool = false
    @State private var isToggleOn: Bool = false
    
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView {
            VStack(alignment: .leading,spacing: 20){
                
                GroupBox{
                    VStack{
                        HStack{
                            Text("CARS")
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "exclamationmark.circle")
                        }
                        .font(.title)
                        
                        HStack(spacing: 15){
                            Image("app-icon")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                            Text("Cars app includes very important information about luxury cars, it has details about the history and different models")
                                .font(.title3)
                        }
                    }
                    .padding(.vertical,20)
                }
                GroupBox{
                    HStack{
                        
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart app")
                                .font(.title2)
                        }
                    }
                    
                }
                Spacer()
                
            }.navigationTitle("Settings")
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark.circle")
                        .font(.title3)
                }))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
