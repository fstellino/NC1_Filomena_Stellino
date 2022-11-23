//
//  ContentView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI


struct ContentView: View {
   // @StateObject private var model = FrameHandler()
    
    var body: some View {
        

        TabView{
            
            TranslationView()
                .tabItem{
                    Image(systemName: "character.book.closed.fill")
                    Text("Translation")
                }
            
            CameraView()
                .tabItem{
                    Image(systemName: "camera.fill")
                    Text("Camera")
                }
            
            ConversationView()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("Conversation")
                }
            
            FavouritesView()
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Favourites")
                }
            
        }//end of tabbar
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

