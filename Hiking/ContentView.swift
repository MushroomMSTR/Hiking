//
//  ContentView.swift
//  Hiking
//
//  Created by NazarStf on 01.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	let hikes = Hike.all()
	
    var body: some View {
		List(self.hikes, id: \.name) { hike in
			Text(hike.name)
				.font(.title)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
