//
//  exercice.swift
//  Exercice1
//
//  Created by Apprenant84 on 13/09/2023.
//

import SwiftUI

struct PlaySafe0: View {
    
    let imagdrogue : String = "drugg"
    let imagmaladie : String = "doct"
    let imafamily : String = "fam"
    let imagsx : String = "sx"
    let imgdeath : String = "death"
    let imageharcelement : String = "bully"
    
    
    enum tab: String, CaseIterable{
        
        case ListBulletView = "ListbulletView"
        case jeux
        case conseilsprt
        
    }
    
    var colorblue: String = "bleuclair"
    
    var colorbleuclair: String = "bleubully"
    
    var body: some View {
        
        TabView{
           
            Label(" Thématiques ", systemImage: "square.3.layers.3d.down.right")
        }
        
        TabView{
           
            Label(" jeux ", systemImage: "gamecontroller");
        }
        
        TabView{
           
            Label(" Ressources ", systemImage: "newspaper")
        }
        
       
        
        
        
        VStack{
        
            
            ScrollView{
                
                
                VStack(spacing: 25.0){
                    
                    
                    ZStack{
                        
                        
                        
                        Button {
                            
                            
                            
                        } label: {
                            
                            
                            ZStack{
                                
                                Image(imageharcelement)
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                    .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .cyan]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .cornerRadius(20)
                                
                                Text("Le Harcèlement")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(0)
                                    .padding(.top,320)
                                
                                
                            }
                        }
                        
                    }
                    
                    Button {
                        
                    } label: {
                        
                        ZStack{
                            
                            Image(imagdrogue)
                                .resizable()
                                .frame(width: 360, height: 360)
                                .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(20)
                            
                            Text("La Drogue ")
                            
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.top,320)
                            
                            
                        }
                        
                    }
                    Button {
                        
                    } label: {
                        
                        ZStack{
                            
                            Image(imagsx)
                                .resizable()
                                .frame(width: 360, height: 360)
                                .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(20)
                            
                            Text("La Sexualité ")
                            
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.top,320)
                            
                        }
                        
                    }
                    Button {
                        
                    } label: {
                        
                        ZStack{
                            
                            Image(imagmaladie)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 360, height: 360)
                                .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .orange]),  startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(20)
                            
                            Text("La Maladie et Le Handicap ")
                            
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.top,320)
                            
                        }
                        
                    }
                    Button {
                        
                    } label: {
                        
                        ZStack{
                            Image(imafamily)
                                .resizable()
                                .frame(width: 360, height: 360)
                                .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .yellow]),  startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(20)
                            
                            Spacer()
                            Text("La Famille et le Foyer")
                            
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.top,320)
                            
                            
                        }
                        
                    }
                    Button {
                        
                    } label: {
                        
                        
                        
                        ZStack{
                            Image(imgdeath)
                                .resizable()
                                .frame(width: 360, height: 360)
                                .background(LinearGradient(gradient:Gradient(colors: [Color(colorblue), .green]),  startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(20)
                            
                            Text("La Mort")
                            
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(0)
                                .padding(.top,320)
                            
                        }
                        
                    }
                    
                    
                    
                    
                }
                .padding(21.0)
                
            }
        }
        
        
    }
    
    
    
    
    
    
    struct Exercice_Previews: PreviewProvider{
        static var previews: some View {
            PlaySafe0()
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
