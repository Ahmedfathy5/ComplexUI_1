//
//  ContentView.swift
//  Complex UI
//
//  Created by Ahmed Fathi on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Home()
        }
        
        
    }
}
struct Home: View {
  @State  var data = [
        FruitModels(name: "Breaking Banana", price: "20 LE", content: "Bananas are fresh, versatile, and relatively inexpensive fruits. They’re packed with essential nutrients and may benefit weight loss, digestion, and heart health.", calaories: "89", expand: ["15","20","25"], color: Color("ban"), image: "ban"),
        FruitModels(name: "Amazing Avocado", price: "150 LE", content: "avocado is a bright green fruit with a large pit and dark leathery skin. It's also known as alligator pear or butter fruit. Avocados are a favorite of the produce section.", calaories: "160", expand: ["100" , " 80", "85"], color: Color("ava"), image: "ava"),
        FruitModels(name: "Seductive Strawberry", price: "30 LE", content: "Strawberries are one of the easiest fruits to grow. The taste of this home grown fruit is far more flavorful than you’ll find in a grocery store. Why? The sugar in berries converts to starch soon after they’re picked. Learn more about how to grow strawberries in the garden or in pots." , calaories: "33", expand: ["0.25","0.15","0.175"], color: Color("sta"), image: "sta")
    ]
@State var index = 0
    var body: some View {
        NavigationView {
            ZStack (alignment: .top ){
                Circle()
                    .fill(self.data[self.index].color)
                    .frame(width: 500, height:  500 )
                    .offset(y: -500)
                VStack{
                    HStack{
                        Button {
                            if index != 0 {
                                index -= 1
                            }
                        } label: {
                            Image(systemName: "arrow.backward.circle.fill")
                                .renderingMode(.original)
                                .foregroundColor(.black)
                            
                        }
                        .opacity(index != 0 ? 1 : 0.5)
                        .disabled(index != 0 ? false : true )
                        Image(self.data[self.index].image)
                            .cornerRadius(40)
                        Button {
                            if index != data.count - 1 {
                                index += 1
                            } }label: {
                            Image(systemName: "arrow.forward.circle.fill")
                                .renderingMode(.original)
                                .foregroundColor(.black)
                        }
                            .opacity(index != data.count - 1  ? 1 : 0.5)
                            .disabled(index != data.count - 1  ? false : true )

                    }
                    .padding(.top , -50)
                    VStack( spacing: 20) {
                        Text(self.data[self.index].name)
                            .fontWeight(.bold)
                            .font(.title)
                        Text(self.data[self.index].price)
                            .fontWeight(.bold)
                        Text(self.data[self.index].content)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal , 60)
                        Text("Nutrition Value")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top)
                        HStack {
                            Image(systemName: "flame.fill")
                                .resizable()
                                .frame(width:  25, height: 35)
                                .foregroundColor(.white)
                            VStack(alignment: .leading, spacing: 4) {
                                Text(self.data[self.index].calaories)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Text("Calories")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                            }
                            .padding(.leading , 20)
                        }
                        .padding()
                        .background(.purple)
                        .cornerRadius(10)
                        
                        HStack(spacing: 40) {
                            VStack(alignment: .center, spacing: 10) {
                                Text(self.data[self.index].expand[0])
                                    .fontWeight(.bold)
                                
                                  Text("Fat")
                                    .foregroundColor(.gray)
                            }
                            
                           
                            VStack(alignment: .center, spacing: 10) {
                                Text(self.data[self.index].expand[1])
                                    .fontWeight(.bold)
                                    Text("Carbohydered")
                                    .foregroundColor(.gray)
                            }
                          
                            VStack(alignment: .center, spacing: 10) {
                                Text(self.data[self.index].expand[2])
                                    .fontWeight(.bold)
                                Text("Protine")
                                    .foregroundColor(.gray)
                            }
                          
                        }
                        .padding(.horizontal)
                        .padding(.top , 20)
                        
                        Button {
                            
                        } label: {
                            Text("Add To Cart")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.vertical)
                                .background(.purple)
                                .cornerRadius(15)
                                .clipShape(Capsule())
                        }
                        .padding(.bottom , 25)

                        
                    }
                }
               
                   
                        
                       
                        
               
               
                  
                        
                        
              
                
            
                
                   
            }
            .animation(.default)
            
           
     
            .navigationBarItems(leading: HStack{
                Image(systemName: "chevron.backward")
                     .renderingMode(.original )
                     .foregroundColor(.black)
                 Text("Back")
                    .fontWeight(.bold)
            }
            ,trailing: Image(systemName: "bag"))

        }
        
     
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 Button {
     
 } label: {
     HStack( spacing: 10) {
        Image(systemName: "chevron.backward")
             .renderingMode(.original )
             .foregroundColor(.black)
         Text("Back")
             .foregroundColor(.black)
             .fontWeight(.bold)
     }
 }
 Spacer()
 Button {
     
 } label: {
     Image(systemName: "bag")
         .renderingMode(.original)
 */
