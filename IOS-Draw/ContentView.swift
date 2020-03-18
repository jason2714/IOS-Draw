//
//  ContentView.swift
//  IOS-Draw
//
//  Created by User21 on 2020/3/18.
//  Copyright © 2020 Jason2714. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        //Path(CGRect(x:10,y:10,width:100,height: 100)).fill(Color.blue)
      
        ZStack
            {
                 HalfSpiderView(posX:(UIScreen.main.bounds.width/2)-100,posY:-100,color: Color(red:194/255, green:194/255, blue:214/255))
                HalfSpiderView(posX:(UIScreen.main.bounds.width/2)-300,posY:-100,color: Color(red:194/255, green:194/255, blue:214/255))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                
                HalfSpiderView(posX:(UIScreen.main.bounds.width/2)-200,posY:0)
                HalfSpiderView(posX:(UIScreen.main.bounds.width/2)-200,posY:0)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
        }
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


struct HalfSpiderView: View {
    var posX:CGFloat=0
    var posY:CGFloat=0
    var color :Color=Color.black
    var body: some View {
        Path { (path) in
            path.move(to: CGPoint(x: 200, y: 300))
            path.addQuadCurve(to: CGPoint(x:190,y:295), control: CGPoint(x:190,y:300))
            path.addQuadCurve(to: CGPoint(x:185,y:305), control: CGPoint(x:185,y:308))
            path.addQuadCurve(to: CGPoint(x:190,y:280), control: CGPoint(x:180,y:285))
            path.addQuadCurve(to: CGPoint(x:178,y:300), control: CGPoint(x:172,y:283))
            path.addQuadCurve(to: CGPoint(x:150,y:270), control: CGPoint(x:175,y:305))
            path.addQuadCurve(to: CGPoint(x:85,y:270), control: CGPoint(x:105,y:275))
            path.addQuadCurve(to: CGPoint(x:100,y:120), control: CGPoint(x:70,y:240))
            path.addQuadCurve(to: CGPoint(x:63,y:270), control: CGPoint(x:62,y:240))
            path.addQuadCurve(to: CGPoint(x:63,y:270), control: CGPoint(x:62,y:240))
            path.addQuadCurve(to: CGPoint(x:78,y:285), control: CGPoint(x:75,y:286))
            path.addQuadCurve(to: CGPoint(x:83,y:280), control: CGPoint(x:80,y:280))
            path.addQuadCurve(to: CGPoint(x:145,y:282), control: CGPoint(x:120,y:280))
            path.addQuadCurve(to: CGPoint(x:168,y:310), control: CGPoint(x:160,y:295))
            path.addQuadCurve(to: CGPoint(x:135,y:295), control: CGPoint(x:165,y:315))
            path.addQuadCurve(to: CGPoint(x:40,y:315), control: CGPoint(x:130,y:290))
            path.addQuadCurve(to: CGPoint(x:65,y:120), control: CGPoint(x:20,y:240))
            path.addQuadCurve(to: CGPoint(x:20,y:314), control: CGPoint(x:20,y:225))
            path.addQuadCurve(to: CGPoint(x:42,y:333), control: CGPoint(x:38,y:330))
            path.addQuadCurve(to: CGPoint(x:90,y:312), control: CGPoint(x:50,y:320))
            path.addQuadCurve(to: CGPoint(x:168,y:325), control: CGPoint(x:140,y:300))
            path.addQuadCurve(to: CGPoint(x:115,y:323), control: CGPoint(x:125,y:328))
            path.addQuadCurve(to: CGPoint(x:30,y:400), control: CGPoint(x:80,y:360))
            path.addQuadCurve(to: CGPoint(x:10,y:400), control: CGPoint(x:20,y:408))
            path.addQuadCurve(to: CGPoint(x:60,y:600), control: CGPoint(x:10,y:520))
            path.addQuadCurve(to: CGPoint(x:33,y:420), control: CGPoint(x:20,y:500))
            path.addQuadCurve(to: CGPoint(x:120,y:340), control: CGPoint(x:40,y:405))
            path.addQuadCurve(to: CGPoint(x:168,y:335), control: CGPoint(x:130,y:335))
            path.addQuadCurve(to: CGPoint(x:120,y:375), control: CGPoint(x:120,y:375))
            path.addQuadCurve(to: CGPoint(x:110,y:370), control: CGPoint(x:115,y:375))
            path.addQuadCurve(to: CGPoint(x:160,y:680), control: CGPoint(x:110,y:600))
            path.addQuadCurve(to: CGPoint(x:130,y:388), control: CGPoint(x:110,y:550))
            path.addQuadCurve(to: CGPoint(x:125,y:385), control: CGPoint(x:125,y:385))
            path.addQuadCurve(to: CGPoint(x:172,y:345), control: CGPoint(x:160,y:345))
            path.addQuadCurve(to: CGPoint(x:158,y:375), control: CGPoint(x:173,y:360))
            path.addQuadCurve(to: CGPoint(x:197,y:500), control: CGPoint(x:163,y:450))
            path.addQuadCurve(to: CGPoint(x:200,y:487), control: CGPoint(x:195,y:490))
        }.fill(color)
            .offset(x:posX,y:posY)
    }
}
