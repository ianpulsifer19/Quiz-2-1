//
//  ContentView.swift
//  Quiz 2-1
//
//  Created by Ian Pulsifer (student LM) on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var picture: String = "forest"
    var body: some View {
        ZStack{
            Image(picture).resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Button{
                    if picture == "forest"{
                        picture = "snowflake"
                    }
                    else{
                        picture = "forest"
                    }
                }label:{
                    Text("Let it snow").padding().background(Color.white).cornerRadius(20).foregroundColor(Color.purple).padding().font(.largeTitle)
                }
            }
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
