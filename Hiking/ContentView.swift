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
			HikeCell(hike: hike)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
	
	let hike: Hike
	
	var body: some View {
		HStack {
			Image(hike.imageURL)
				.resizable()
				.frame(width: 100, height: 100)
				.cornerRadius(15)
			VStack {
				Text(hike.name)
					.font(.headline)
				Text(String(format: "%.2f miles", hike.miles))
			}
			
		}
	}
}
