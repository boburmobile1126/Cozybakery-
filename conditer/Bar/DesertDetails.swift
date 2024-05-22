
import SwiftUI

struct DesertDetails: View {
    @Environment(\.presentationMode) var presentationMode
    @State var desert:Dessert = dessertData[2]
    var body: some View {
        VStack(alignment: .leading){
            Header(image : desert.image)
            VStack(alignment: .leading){
                ScrollView(.vertical , showsIndicators: false){
                    VStack(alignment: .leading){
                        Text(desert.name)
                            .foregroundColor(.primary)
                            .font(.custom(" ", size: 20))
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.vertical , 10)
                        HStack{
                            Text(desert.price)
                                .font(.title3)
                                .font(.custom(" ", size: 20))
                                .fontWeight(.bold)
                            Spacer()
                            AmountView()
                        }
                        .padding(.horizontal)
                        
                        HStack{
                            SubInfoView(image: "car", info: "Бесплатно")
                                .font(.custom(" ", size: 20))
                            Spacer()
                            SubInfoView(image: "Доставка", info: "1-2 km")
                                .font(.custom(" ", size: 20))
                            
                        }
                        .padding(.top, 20)
                        .padding()
                        Text ("Описание :")
                            .fontWeight (.medium)
                            .font(.custom(" ", size: 20))
                            .padding(.horizontal)
                        Text (desert.description)
                            .foregroundColor (.gray)
                            .font(.custom(" ", size: 20))
                            .fontWeight (.light)
                            .padding ()
                    }
                }
            }
            Button(action: {
               
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name:NSNotification.Name("status"), object: nil)
                
            }) {
            Text ("Вводите данные" )
                    .font(.custom(" ", size: 20))
            .foregroundColor(.white)
            }
            .padding()
                .frame (width: UIScreen.main.bounds.width / 1.1)
                .background (Color.green)
            
                .cornerRadius (35)
                .font(.custom(" ", size: 20))
                .padding ()
                .padding(.bottom , 55)
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.custom(" ", size: 20))
                        .imageScale(.large)
                }
            }
            ToolbarItem(placement:.navigationBarTrailing){
                Button(action: {
                    
                }) {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .font(.custom(" ", size: 20))
                        .foregroundColor(.red)
                }
            }
        })
    }
}

struct Header: View{
    var image:String
    var body: some View{
        ZStack(alignment: .top){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height / 2)
                .cornerRadius(45)
        }
    }
}


struct AmountView: View {
    
    @State var count = 1
    
    var body: some View {
        HStack {
            Button(action: {
                if self.count != 0 {
                    self.count -= 1
                }
            }) {
                Text ("_")
                    .font (.title)
                    .foregroundColor (.black)
                    .frame(width: 35, height: 35) .background (Circle() .stroke() .foregroundColor (Color.white))
                Text ("\(self.count)" )
                    .font (.title2)
                    .fontWeight(.bold)
                Button(action: {
                    
                        self.count += 1
                    
                }, label: {
                    Text ("+")
                        .font (.title)
                        .foregroundColor (.black)
                        .frame(width: 35, height: 35)
                        .background (Circle().stroke().foregroundColor(Color.white))
                })
                
            }
        }
    }
}

struct SubInfoView: View {
    var image: String
    var info: String
    var body: some View {
        HStack(spacing: 8) {
            Image (systemName: image)
            Text (info)
        }
    }
}


struct DesertDetails_Previews: PreviewProvider {
    static var previews: some View {
        DesertDetails()
    }
}
