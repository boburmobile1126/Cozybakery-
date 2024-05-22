import SwiftUI
struct StarterScreen: View {
    @State var status = UserDefaults.standard.value(forKey: "con") as? Bool ?? false
    var body: some View {
        VStack{
            if self.status{
               ContentView()
            }else{
                SignIn()
            }
        }
        .onAppear{
            let forName = NSNotification.Name("con")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                self.status = UserDefaults.standard.value(forKey: "con") as? Bool ?? false
            }
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
            
    }
}

