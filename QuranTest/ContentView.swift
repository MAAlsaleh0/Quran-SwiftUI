//
//  ContentView.swift
//  QuranTest
//
//  Created by Mohammed Alsaleh on 02/09/1443 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject var ViewModel = VM()
    var body: some View {
        NavigationView {
            List(ViewModel.data , id:\.self.id) { data in
                NavigationLink {
                    List(data.verses , id:\.self.id) { ayah in
                        VStack(alignment:.leading) {
                            Text("آية رقم \(ayah.id)")
                                .font(.body)
                            Text(ayah.text).font(.title)
                                .textSelection(.enabled)
                        }.navigationTitle("سورة \(data.name)")
                    }
                

                } label: {
                    VStack(alignment:.leading) {
                        Text(data.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("عدد آياتها:\(data.total_verses)")
                    }
                }

            }.navigationTitle("السور")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
