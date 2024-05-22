import SwiftUI
struct SignUp: View {
    @EnvironmentObject var contactsManager: ContactsManager
    @Environment(\.presentationMode) var presentation
    @State var fullName:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var cpassword:String = ""
    @State var imgUser:String = ""
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    VStack(spacing:0){
                        Spacer()
                        Text("Cozy bakery")
                            .font(Font.custom("", size: 45))
                        TextField("fullname",text: $fullName)
                            .frame(height: 50).padding(.leading,10)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.4)).cornerRadius(8)
                            .padding(.top,10)
                        TextField("email",text: $email)
                            .frame(height: 50).padding(.leading,10)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.4)).cornerRadius(8)
                            .padding(.top,10)
                        SecureField("password",text: $password)
                            .frame(height: 50).padding(.leading,10)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.4)).cornerRadius(8)
                            .padding(.top,10)
                        SecureField("cpassword",text: $cpassword)
                            .frame(height: 50).padding(.leading,10)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.4)).cornerRadius(8)
                            .padding(.top,10)
                        Button(action: {
//                            let person = User(fullname: fullName, email: email, password: password, cpassword: cpassword)
//                             contactsManager.persons.append(person)
//                             contactsManager.saveContacts()
//
                        }, label: {
                            Text("sign_up")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius:8)
                                        .stroke(lineWidth: 1.5)
                                        .foregroundColor(Color.white.opacity(0.4))
                                )
                        }).padding(.top,10)
                        
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("already_have_account").foregroundColor(.orange)
                                Button(action: {
                                    self.presentation.wrappedValue.dismiss()
                                }, label: {
                                    Text("sign_in")
                                        .foregroundColor(.orange)
                                        .fontWeight(.bold)
                                })
                            }
                        }.frame(maxWidth: .infinity, maxHeight:60)
                        
                    }.padding()
                }.edgesIgnoringSafeArea(.all)
            }
            .background(.brown)
            
        }
        .accentColor(.red)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        let contactsManager = ContactsManager()
        return SignUp().environmentObject(contactsManager)
    }
}
