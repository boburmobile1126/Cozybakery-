

import SwiftUI

struct ContentView: View {
@State private  var showDetails = false
@State private  var selectedItem = dessertData[0]

    var body: some View {
        NavigationView{
            ZStack{
                Color("Color1")
                VStack{
//                    HomeTopBar()
                    Text("Cozy bakery")
                        .padding(.top , 70)
                    ScrollView(.vertical , showsIndicators: false) {
                        VStack {
                            Button(action: {
                                UserDefaults.standard.set(true, forKey: "con")
                                NotificationCenter.default.post(name:NSNotification.Name("con"), object: nil)
                            },
                                   label:{
                                Text("")
                                })
                            ForEach(dessertData , id: \.self) { item in
                                Button(action: {
                                    showDetails = true
                                    selectedItem = item
                                }, label: {
                                   DessertItemView(item: item)
                                })
                            }
                            .background(
                                NavigationLink(destination: DesertDetails(desert: selectedItem).navigationBarBackButtonHidden(true) , isActive: $showDetails){
                                    EmptyView()
                                }
                                )
                        }
                    }
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
struct DessertItemView:View{
    var item : Dessert
    var body: some View{
        ZStack(alignment: .topLeading){
            HStack(spacing: 16){
                Image(item.image)
                    .resizable()
                    .scaledToFill ()
                    .clipShape (Circle ())
                    .frame(width: 80, height: 80)
                VStack{
                    Text(item.name)
                        .font(.system(size: 16,weight: .regular))
                        .padding(.trailing , 20)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text (item.price)
                    .font(.system(size: 14, weight: .semibold))
                    .padding ()
                    .foregroundColor(.green)
            }
        }
        .background(Color.white)
        .cornerRadius(40)
        .padding(.horizontal , 20)
        .padding(.vertical , 5)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
