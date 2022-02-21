//
//  ToggleCell.swift
//  SwiftUIToggle
//
//  Created by Robert Harrison on 2/21/22.
//

import SwiftUI

struct ToggleCell: View {
    
    var title: String
    @ObservedObject var toggleState:ToggleState
    var onChangeHandler: ((Bool) -> Void)?
    
    var body: some View {
        
        ZStack {
            
            Color(red: 55/255, green: 55/255, blue: 55/255, opacity: 1)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Toggle(isOn: $toggleState.isOn, label: {
                       
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .frame(minHeight: 44)
                    .padding(15)
                    .foregroundColor(.primary)

            })
            .onChange(of: toggleState.isOn) { isEnabled in
                onChangeHandler?(isEnabled)
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            

        } // ZStack
        
        .cornerRadius(16)
        .frame(maxHeight: 54)
    }
}

struct ToggleCell_Previews: PreviewProvider {
    static var previews: some View {
        ToggleCell(title: "Face ID", toggleState: ToggleState(), onChangeHandler: nil)
    }
}
