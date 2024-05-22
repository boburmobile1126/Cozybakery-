import SwiftUI

struct HomeTopBar: View {
    @State private var tabSelection = 0
    
    var body: some View {
        TabView(){
            
            ContentView()
                .font(.system(size:30,weight: .bold,design: .rounded))
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            SearView()
                .font(.system(size: 30,weight: .bold,design: .rounded))
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            
        }
    }
}

struct HomeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBar()
    }
}
