import SwiftUI

struct HomeView: View {
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "Green-System")
    }
    
    @State var selectedIndex = 0
    
    let tabBarImagesNames = ["person.fill", "wrench.and.screwdriver.fill", "suitcase.fill"]
    
    var body: some View {
        VStack{
            
            ZStack {
                switch selectedIndex {
                case 0:
                    PerfilUsuarioView()
                case 1:
                  ProjetosView()
                    
                default:
                    EmpresasView()
                }
            }
                Spacer()

            HStack{
                ForEach(0..<3){num in
                    Button(action: {
                        selectedIndex = num
                    },
                    label:{
                            Spacer()
                           Image(systemName: tabBarImagesNames[num])
                            .font(.system(size:27, weight: .bold))
                            .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.7))
                           Spacer()
                    })
                }
            }
        }
    }
}


/*
    var body: some View {
    
        TabView {
            
            LoginView()
                .tabItem {
                    Label("Login", systemImage: "pencil")
                }
            PerfilUsuarioView()
                .tabItem {
                    Label("Perfil", systemImage: "person")

                }
                
            ProjetosView()
                .tabItem {
                    Label("Projetos", systemImage:"house")
                }
            EmpresasView()
                .tabItem {
                    Label("Empresas", systemImage: "house")
                }
                

        }
        
        .navigationTitle("EcoInvest")
    }
 
*/

struct home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

