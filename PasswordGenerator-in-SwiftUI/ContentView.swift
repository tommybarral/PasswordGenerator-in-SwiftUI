//
//  ContentView.swift
//  PasswordGenerator-in-SwiftUI
//
//  Created by tommy on 07/03/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var generatorData = GeneratorData()
    var body: some View {
        ZStack {
            Color(red:0.74, green:0.76, blue:0.78)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(K.titleName)
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.init(red:0.75, green:0.22, blue:0.17))
                Image(K.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(Text("\(generatorData.labelText + generatorData.labelText2 + generatorData.labelText3 + generatorData.labelText4 + generatorData.labelText5 + generatorData.labelText6 + generatorData.labelText7 + generatorData.labelText8 + generatorData.labelText9 + generatorData.labelText10 + generatorData.labelText11 + generatorData.labelText12 + generatorData.labelText13 + generatorData.labelText14 + generatorData.labelText15 + generatorData.labelText16 + generatorData.labelText17 + generatorData.labelText18 + generatorData.labelText19 + generatorData.labelText20)")
                        .font(.system(size: 29))
                        .fontWeight(.heavy)
                        .foregroundColor(.yellow)
                )
                HStack {
                    Button(action: {
                        /* possibility to add :
                         self.generatorData.labelText = self.generatorData.character[.random(in: 0...self.generatorData.character.count)] but out of rang after 7 generator.
                         Possibility to extra in subview as a ButtonView BUT doesnt generate the array after that.
                         */
                        self.generatorData.labelText = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText2 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText3 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText4 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText5 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText6 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText7 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText8 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText9 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText10 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText11 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText12 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText13 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText14 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText15 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText16 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText17 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText18 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText19 = self.generatorData.character[.random(in: 0...64)]
                            self.generatorData.labelText20 = self.generatorData.character[.random(in: 0...64)]
                        }) {
                            Text(K.buttonTitle)
                                .font(.system(size: 28))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    Button(action: {
                        UIPasteboard.general.string =
                            self.generatorData.labelText + self.generatorData.labelText2 + self.generatorData.labelText3 + self.generatorData.labelText4 + self.generatorData.labelText5 + self.generatorData.labelText6 + self.generatorData.labelText7 + self.generatorData.labelText8 + self.generatorData.labelText9 + self.generatorData.labelText10 + self.generatorData.labelText11 + self.generatorData.labelText12 + self.generatorData.labelText13 + self.generatorData.labelText14 + self.generatorData.labelText15 + self.generatorData.labelText16 + self.generatorData.labelText17 + self.generatorData.labelText18 + self.generatorData.labelText19 + self.generatorData.labelText20
                    }) {
                        Text(K.copyButton)
                            .font(.system(size: 28))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(25)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //.previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}



