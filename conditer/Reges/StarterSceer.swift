import SwiftUI
struct StarterSceer: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    var body: some View {
        VStack{
            if self.status{
               HomeTopBar()
            }else{
                SignIn()
            }
        }
        .onAppear{
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StarterSceer_Previews: PreviewProvider {
    static var previews: some View {
        StarterSceer()
            
    }
}

