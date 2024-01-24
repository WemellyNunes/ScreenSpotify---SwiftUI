//
//  MusicPage.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 24/01/24.
//

import SwiftUI

struct MusicPage: View {
    
    var song : Song
    
    var body: some View {
        ZStack{
                    Image("fundo 1").resizable().edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        VStack{
                            Image("\(song.capa)")
                                .resizable()
                                .frame(width: 300, height: 300)
                            Text("\(song.name)")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            Text("\(song.artist)")
                                .foregroundStyle(.white)
                        }
                        
                        HStack{
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "backward.end.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Spacer()
                            
                            Image(systemName: "play.circle.fill").resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "forward.end.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "gobackward.minus")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
            
                                
                        }.padding(.all, 40.0)
                    }
                    
                }
            }
        }


struct MusicPage_Previews: PreviewProvider {
    static var previews: some View {
        let pageMusic =  Song(id: 1, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny")
        
        MusicPage(song: pageMusic)
        
    
    }
}
