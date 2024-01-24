//
//  mainPage.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 23/01/24.
//

import SwiftUI


struct Song : Identifiable {
    var id: Int
    var name : String
    var artist : String
    var capa : String
}

struct Album : Identifiable {
    var id : Int
    var capa : String
    var name : String
}

var arrayMusics = [
    Song(id: 1, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 2, name: "Freaks", artist: "Surf Curse", capa: "freaks"),
    Song(id: 3, name: "Notion", artist: "The Rare Occasions", capa: "notion"),
    Song(id: 4, name: "Vas", artist: "Jagger Finn", capa: "vas"),
    Song(id: 5, name: "Heather", artist: "Conan Gray", capa: "heat"),
    Song(id: 6, name: "Shut Up My Moms Calling", artist: "Hotel Ugly", capa: "ugly")
  
]

var arrayAlbums = [
    Album(id: 1, capa: "ugly2", name: "Hotel Ugly"),
    Album(id: 2, capa: "blame", name: "Beach Bunny"),
    Album(id: 3, capa: "rare", name: "The Rare Occasions"),
    Album(id: 4, capa: "yellow", name: "Coldplay"),
    Album(id: 5, capa: "wait", name: "Willow")
    
]

struct mainPage: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Image("bunny").resizable().frame(width: 200, height: 200)
                    HStack{
                        Text("Cloud 9")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer()
                    }.padding()
                    HStack{
                        Image("bunny").resizable().frame(width: 30, height: 30)
                        Text("Beach Bunny").foregroundColor(.white)
                        Spacer()
                    }.padding()
                    
                    VStack{
                        ScrollView{
                            ForEach(arrayMusics, id: \.id) { music in
                                NavigationLink(destination: MusicPage(song: music)){
                                    VStack{
                                        HStack{
                                            Image("\(music.capa)").resizable().frame(width: 50, height: 50)
                                            VStack(alignment: .leading){
                                                Text("\(music.name)")
                                                    .fontWeight(.semibold)
                                                Text("\(music.artist)")
                                                    .fontWeight(.light)
                                            }.foregroundColor(.white)
                                        
                                            
                                                Spacer()
                                                HStack{
                                                    Ellipse().frame(width: 2, height: 2)
                                                    Ellipse().frame(width: 2, height: 2)
                                                    Ellipse().frame(width: 2, height: 2)
                                                }.foregroundColor(.white)
                                            }.frame(width: 360)
                                        }
                                    }
                                    
                                }
                            HStack{
                                Text("Sugeridos").font(.title2).fontWeight(.semibold).foregroundColor(.white)
                                Spacer()
                            }.padding(10.0)
                            
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(arrayAlbums) { music in
                                        VStack{
                                            Image("\(music.capa)").resizable().frame(width: 150, height: 150)
                                            Text("\(music.name)").foregroundColor(.white)
                                        }
                                    }
                                }
                                
                            }
                            }

                    
                    }
                    
                    
                    
                    
                    
                    
                
                }
            }.background(Image("fundo 1").resizable().edgesIgnoringSafeArea(.all))
        }
            
        }
    }
            
            
            
                

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}
