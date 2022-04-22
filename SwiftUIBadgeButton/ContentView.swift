//
//  ContentView.swift
//  SwiftUIBadgeButton
//
//  Created by ricardo silva on 22/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        customButton()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct customButton: View {
    
    @State var count = 0
    
    var body: some View {
        
        ZStack {
            
            Button {
                print("clicked")
                self.count += 1
            } label: {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
            .foregroundColor(.white)
            .background(.green)
            .clipShape(Circle())
            
            if count != 0 {
                Text("\(count)")
                    .padding(6)
                    .background(.black)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .offset(x: 17, y:-25)
            }

        }
        .animation(.spring())


    }
}
