
import SwiftUI

struct SignIn: View {
    @EnvironmentObject var contactsManager: ContactsManager
    @State var isLoading = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                VStack(spacing: 0){
                    Spacer()
                    
                    Text("Cozy bakery").foregroundColor(.white)
                        .font(Font.custom("Billabong", size: 45))
                    
                    TextField("email", text: $email)
                        .frame(height: 50).padding(.leading,10)
                        .foregroundColor(.white)
                        .background(Color.white.opacity(0.4)).cornerRadius(8)
                        .padding(.top,10)
                    TextField("password", text: $password)
                        .frame(height: 50).padding(.leading,10)
                        .foregroundColor(.white)
                        .background(Color.white.opacity(0.4)).cornerRadius(8)
                        .padding(.top,10)
                    
                    Button(action: {
//                        if contactsManager.persons.first(where: { $0.email == email && $0.password == password}) != nil {
                            UserDefaults.standard.set(true, forKey: "status")
                            NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                            
                       // }
                        
                        
                        
                    }, label:
                            {
                        Text("sign_in")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1.5)
                                    .foregroundColor(.white.opacity(0.4))
                            )
                    }).padding(.top,10)
                    
                    Spacer()
                    
                    VStack{
                        
                        HStack{
                            Text("dont_have_account").foregroundColor(.white)
                            NavigationLink(
                                destination: SignUp(),
                                label: {
                                    Text("sign_up").foregroundColor(.white).fontWeight(.bold)
                                })
                            
                        }
                    }.frame(maxWidth:.infinity, maxHeight: 70)
                    
                }.padding()
                
            }
            .background(.brown)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        let contactsManager = ContactsManager()
        return SignIn().environmentObject(contactsManager)
    }
}

