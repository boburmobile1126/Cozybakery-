import SwiftUI

struct SignIn: View {
   
    @State var email:String = ""
    @State var password:String = ""
    var body: some View {
        NavigationView{
            
                VStack(spacing:0){
                    Spacer()
                    Text("app_name").foregroundColor(.white)
//                        .font(Font.custom( <#String#>, size: 45))
                    TextField("email",text: $email)
                        .frame(height: 50).padding(.leading,10)
                        .foregroundColor(.white)
                        .background(Color.white.opacity(0.4)).cornerRadius(8)
                        .padding(.top,10)
                    TextField("password",text: $password)
                        .frame(height: 50).padding(.leading,10)
                        .foregroundColor(.white)
                        .background(Color.white.opacity(0.4)).cornerRadius(8)
                        .padding(.top,10)
                    
                    Button(action: {
                        UserDefaults.standard.set(true, forKey: "con")
                        NotificationCenter.default.post(name:NSNotification.Name("con"), object: nil)
                    }, label: {
                                      Text("sign_in")
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(
                                            RoundedRectangle(cornerRadius:8)
                                                .stroke(lineWidth: 1.5)
                                                .foregroundColor(Color.white.opacity(0.4))
                                            )
                       }).padding(.top,10)
                        
                        }
                        
                       Spacer()
                  
                       VStack{
                              HStack{
                                     Text("dont_have_account").foregroundColor(.white)
                                         NavigationLink(
                                          destination: SignUp(),
                                          label: {
                                                Text("sign_up").foregroundColor(.white)
                                                        .fontWeight(.bold)
                                                })
                                            }
                                        }.frame(maxWidth: .infinity, maxHeight:60)
                    
                }.padding()
            }
        }
    


struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}

