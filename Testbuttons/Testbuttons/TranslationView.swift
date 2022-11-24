//
//  TranslationView.swift
//  Testbuttons
//
//  Created by Filomena Stellino on 17/11/22.
//

import SwiftUI

struct TranslationView: View {
    @State private var date = Date()
    @State var inputText = ""
    //@State var per salvare il tag
    
    var engIta = ["Hello" : "Ciao", "Goodmorning" : "Buongiorno", "How are you?" : "Come stai?", "How old are you?" : "Quanti anni hai?"]
    
    var body: some View{
        NavigationView{
            
            VStack{
                HStack(alignment: .top){
                    Picker(selection: .constant(1), label: Text("LanguagePicker")) {
                        Text("English").tag(1)
                        Text("Arabic").tag(2)
                        Text("Chinese").tag(3)
                        Text("Dutch").tag(4)
                        Text("French").tag(5)
                        Text("German").tag(6)
                        Text("Indonesian").tag(7)
                        Text("Italian").tag(8)
                        Text("Japanese").tag(9)
                        Text("Korean").tag(10)
                    }//end of 1st picker
                    
                    Picker(selection: .constant(8), label: Text("LanguagePicker")) {
                        Text("English").tag(1)
                        Text("Arabic").tag(2)
                        Text("Chinese").tag(3)
                        Text("Dutch").tag(4)
                        Text("French").tag(5)
                        Text("German").tag(6)
                        Text("Indonesian").tag(7)
                        Text("Italian").tag(8)
                        Text("Japanese").tag(9)
                        Text("Korean").tag(10)
                    }//end of 2nd picker
                    
                    
                    //end of HStack
                }
               
                
                TextField("Enter text", text: $inputText)
                    .onTapGesture{}
                    .padding()
                .font(.title2)
                .fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
                Divider()
                Text(engIta[inputText] ?? inputText)
                Spacer()
                
                  //Text("tradotto in: \(engIta["\(inputText)"]!)")
                    
                
            } 
            
    }//navigationview
           
  }
   
    
 }//end of struct



//struct DropDown : View {
    //var body: some View {
       // VStack {
            
            //HStack {
               // Text("Expand").frontweight(.heavy)
               // Image(systemName: "chevron.down")}
       // }
        
    //}
    




struct TranslationView_Previews: PreviewProvider {
    static var previews: some View {
        TranslationView()
    }
}
