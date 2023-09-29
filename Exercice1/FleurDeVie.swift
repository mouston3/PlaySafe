//
//  FleurDeVie.swift
//  Exercice1
//
//  Created by Zohra Achour on 27/09/2023.
//

import SwiftUI

struct GameContent: View {
    @Binding var changeImage: Int
    var body: some View {
        VStack {
//            Text("Jeu")
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.black)
                .frame(height: 300)
                .overlay {
                    if changeImage == 0 {
                        ExtractedJeuOne()
                    } else if changeImage == 1 {
                        ExtractedJeuTwo()
                    } else if changeImage == 2 {
                        ExtractedJeuThree()
                    } else if changeImage == 3 {
                        ExtractedJeuFour()
                    } else if changeImage == 4 {
                        ExtractedJeuFive()
                    } else {
                        ExtractedJeuSix()
                    }
                    
                }
            
//            Button("Bob do something!") {
//                if changeImage == 0 {
//                    changeImage = 1
//                } else if changeImage == 1 {
//                    changeImage = 2
//                } else if changeImage == 2 {
//                    changeImage = 3
//                } else if changeImage == 3 {
//                    changeImage = 4
//                } else if changeImage == 4 {
//                    changeImage = 5
//                } else {
//                    changeImage = 0
//                }
//            }
//            .padding()
//            .background(.green)
//            .cornerRadius(20)
//            .foregroundColor(.black)
            
            
//            HStack {
//                Spacer()
//                Button {
//                    changeImage = 0
//                } label: {
//                    Image(systemName: "bolt.fill")
//                }
//
//                Spacer()
//
//                Button {
//
//                } label: {
//                    Image(systemName: "bolt.fill")
//                }
//                Spacer()
//            }
        
        }
        .padding()
    }
}

struct FleurDeVie_Previews: PreviewProvider {
    static var previews: some View {
        GameContent(changeImage: .constant(0))
        FleurDeVie()
//        ExtractedJeuTwo()
//        ExtractedJeuThree()
//        ExtractedJeuFour()
//        ExtractedJeuFive()
//        ExtractedJeuSix()
    }
}


struct ExtractedJeuOne: View {
    var body: some View {
        ZStack {
            Image("terre")
                .resizable()
                .frame(width: 100, height: 50)
                .offset(y: 100)
            
        }
    }
}

struct ExtractedJeuTwo: View {
    @State private var yAxis: CGFloat = -100
    var body: some View {
        ZStack {
            Image("terre")
                .resizable()
                .frame(width: 100, height: 50)
                .offset(y: 100)
            
            Image("handPlant")
                .resizable()
                .frame(width: 100, height: 50)
                .offset(x: 30, y: -100)
            
            Image("seed3")
                .resizable()
                .frame(width: 20, height: 20)
                .offset(y: yAxis)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                yAxis = 100
            }
            
        }
    }
}

struct ExtractedJeuThree: View {
    @State private var yAxis: CGFloat = 0
    @State private var yAxisTwo: CGFloat = 20
    @State private var rotation: CGFloat = 20
    var body: some View {
        ZStack {
            Image("terre")
                .resizable()
                .frame(width: 100, height: 50)
                .offset(y: 100)
            
            Image("watering")
                .resizable()
                .frame(width: 150, height: 150)
                .offset(x: 100, y: -60)
                .rotationEffect(.degrees(rotation))
            
            Image("water")
                .resizable()
                .frame(width: 50, height: 50)
                .offset(x: 10, y: yAxis)
            
            Image("water")
                .resizable()
                .frame(width: 20, height: 20)
                .offset(x: -30, y: yAxisTwo)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                yAxis = 60
                yAxisTwo = 100
                rotation = 0
            }
        }
    }
}

struct ExtractedJeuFour: View {
    @State private var rotation: CGFloat = 0
    @State private var rotationLines: CGFloat = 70
    @State private var moves: CGFloat = -50
    var body: some View {
        ZStack {
            Image("seed3Test")
                .resizable()
                .frame(width: 100, height: 60)
                .offset(y: 95)
            
            Image("sun")
                .resizable()
                .frame(width: 120, height: 120)
                .offset(x: -100, y: -80)
                .rotationEffect(.degrees(rotation))
            
            Image("lines")
                .resizable()
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(rotationLines))
                .offset(x: moves)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                rotation = 80
                rotationLines = 130
                moves = 30
            }
        }
    }
}

struct ExtractedJeuFive: View {
    @State private var bigger: CGFloat = 40
    var body: some View {
        ZStack {
            Image("flowerGrowing")
                .resizable()
                .frame(width: 100, height: 150)
                .offset(y: 50)
            
            Image("linesTwo")
                .resizable()
                .frame(width: bigger, height: bigger)
                .offset(x: 40, y: -60)
            
            Image("linesThree")
                .resizable()
                .frame(width: bigger, height: bigger)
                .offset(x: -80, y: -60)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                bigger = 80
            }
        }
    }
}

struct ExtractedJeuSix: View {
    @State private var rotation: CGFloat = 120
    @State private var xAxis: CGFloat = 40
    @State private var yAxis: CGFloat = 30
    var body: some View {
        ZStack {
            Image("terre")
                .resizable()
                .frame(width: 100, height: 50)
                .offset(y: 100)
            
            Image("withered")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: xAxis, y: yAxis)
                .rotationEffect(.degrees(rotation))
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                rotation = 20
                xAxis = -10
                yAxis = 110
            }
        }
    }
}


import SwiftUI


struct FleurDeVie: View {
    
    @State private var arroser: Bool = false
    @State private var changeImage = "planter"
    @State private var changeConsigne = "Plante la graine !"
    @State private var showingHints = false
    @State private var changeGameState = 0
   
    var bleu = "bleuclair"
    var body: some View {
       
        
        
        
        
        
        VStack{
            Spacer()
                .frame(width: 120, height: 80)
            HStack{
                ZStack {
                    
                    (LinearGradient(gradient:Gradient(colors: [Color(bleu), .green]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                        .frame(width: 220, height: 50)
                    
                    Text("Fleur de vie")
                        .foregroundColor(Color("violet"))
                        .fontWeight(.heavy)
                    
                    
                }
            }
            Spacer()
                .frame(width: 30, height: 40)
            
            VStack{
                
                
                Text(changeConsigne)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("violet"))
                
                
//                Image(changeImage)
//                    .resizable()
//                    .scaledToFit()
//
//                    .scaleEffect(1.2)
//
//                    .clipped()
                
                GameContent(changeImage: $changeGameState)
                
            }
            
            Button {
                if changeImage == "planter"
                        
                {
                    changeImage = "planté"
                    changeConsigne = "Génial !"
                      
                }
                
                else if changeImage == "planté"
                {
                    changeImage = "arrosé"
                    changeConsigne = "Arrose la plante !"
                    
                } else if changeImage == "arrosé" {
                    
                    
                    changeImage = "arroser"
                    changeConsigne = "Super !"
                    
                }
                else if  changeImage == "arroser" {
                    
                    
                    changeImage = "pousse 1"
                    changeConsigne = "Oh, une petite pousse !"
                }
                
                else if changeImage == "pousse 1" {
                    changeImage = "pousse 2"
                    changeConsigne = "Elle grandit !"
                }
                
                else if changeImage == "pousse 2" {
                    changeImage = "pousse 3"
                    changeConsigne = "C'est une belle fleur !"
                }
                
                else if changeImage == "pousse 3" {
                    changeImage = "pousse 4"
                    changeConsigne = "Elle perd ses pétales !"
                }
                
                else if changeImage == "pousse 4" {
                    changeImage = "pousse 5"
                    changeConsigne = "Son temps est venue !"
                }
                
                else if changeImage == "pousse 5" {
                    changeImage = "dead"
                    changeConsigne = "Elle retourne à la terre !"
                }
            }
            
            
        label: {
            
            HStack{
                
                
                
                
                VStack{
                   
                    ZStack{
                    
                        (LinearGradient(gradient:Gradient(colors: [Color(bleu), .green]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                            .frame(width: 220, height: 50)
                        Text("Appuies ici")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("violet"))
                     
                      
                        
                    }
                   
                 
                    HStack {
                      
                        
                        VStack{
                            Spacer()
                        }
                            Button {
                                changeImage = "planter"
                            } label: {
                                Image(systemName: "arrow.counterclockwise.circle")
                                    .foregroundColor(Color("violet"))
                                    
                            }
                            
                       Spacer()
                            .frame(width: 80, height: 80)
                        
                            Button {
                                showingHints = true
                                
                            } label: {
                                Image(systemName: "questionmark.circle")
                                    
                                    .foregroundColor(Color("violet"))
                                    
                            }
                        
                        
                        
                            .alert("Notre vie est un peu semblable à celle d'une fleur 🌷, nous naissons après que papa et maman aient planté la graine. Nous grandissons, cela s'appelle la croissance . Les années passent, on vieilli, on prend des rides et on ressemble à papi 👴 et mamie 👵. Puis on se fatigue et s'endort profondément pour toujours dans un sentiment de paix 🕊️. Ca ne fait pas mal ❤️", isPresented: $showingHints) {
                                Button("C'est compris !", role: .cancel) { }
                        
                            
                        }
                        
                    }
                    
                }
                
                
            }
            
        }
        }
    }
    struct jeumort_Previews: PreviewProvider {
        static var previews: some View {
            FleurDeVie()
        }
    }
}
