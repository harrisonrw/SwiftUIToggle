//
//  ContentView.swift
//  SwiftUIToggle
//
//  Created by Robert Harrison on 2/21/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var faceIdToggleState = ToggleState()
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack(spacing: 10) {
                
                    Spacer()
                    
                    ToggleCell(title: "Face ID", toggleState: faceIdToggleState) { isEnabled in
                        toggleFaceId(isEnabled: isEnabled)
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    Spacer()
                    
                } // VStack
                
            } // ZStack
            
            .navigationBarTitle("SwiftUI Toggle")
            .navigationBarTitleDisplayMode(.inline)
            
        } // NavigationView
        
        .preferredColorScheme(.dark)
    }
    
    private func toggleFaceId(isEnabled: Bool) {
        print("Face ID : \(isEnabled)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
