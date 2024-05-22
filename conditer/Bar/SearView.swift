//
//  SearView.swift
//  conditer
//
//  Created by Bobur Napasov on 09/05/24.
//

import SwiftUI

struct SearView: View {
    @State var searchkey: String = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
                .padding()
            TextField("Search..." , text: $searchkey)
            
        }
        .background(Color.white)
        .cornerRadius(30)
        .padding(.horizontal , 25)
        .padding(.bottom)
    }
}

struct SearView_Previews: PreviewProvider {
    static var previews: some View {
        SearView()
    }
}
