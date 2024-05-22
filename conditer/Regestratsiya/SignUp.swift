import SwiftUI
struct SignUp: View {
    @Environment(\.presentationMode) var presentation
   
    @State var fullName:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var cpassword:String = ""
    @State var imgUser:String = ""
    var body: some View {
        NavigationView{
            
                
                VStack(spacing:0){
                    Spacer()
                    Text("app_name").foregroundColor(.white)
                        .font(Font.custom("Billabong", size: 45))
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
                                     Text("already_have_account").foregroundColor(.white)
                                  Button(action: {
                                      self.presentation.wrappedValue.dismiss()
                                  }, label: {
                                      Text("sign_in").foregroundColor(.white)
                                              .fontWeight(.bold)
                                  })
                                            }
                                        }.frame(maxWidth: .infinity, maxHeight:60)
                    
                }.padding()
            }.edgesIgnoringSafeArea(.all)
        }
         
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
