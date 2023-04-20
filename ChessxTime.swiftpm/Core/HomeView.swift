import SwiftUI
import UIKit

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    @State private var showPortfolioView: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                    .padding()
                if (showPortfolio)
                    {
                    NavigationLink(destination: ContentView()) {
                        Text("Queen's Gambit\nWhite's most popular opening, an aggressive introduction! Named for white's first move of sacrificing it's queenside pawn.")
                            .font(.headline)
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.white)
                            .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .top)
                            .padding(10)
                            .background(.teal)
                            .cornerRadius(10)

                    }
                    Text("Coming Next Month:\nRuy Lopez, Fried Liver")
                        .font(.headline)
                        .minimumScaleFactor(0.01)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50, alignment: .top)
                        .padding(10)
                        .background(.gray)
                        .cornerRadius(10)
                }
                
            }
            
            HStack (alignment: .bottom){
                Image("cute_queen_im")
                    .resizable()
                    .scaledToFit()
                Image("cute_bishop_im")
                    .resizable()
                    .scaledToFit()
                Image("cute_king_im2")
                    .resizable()
                    .scaledToFit()
                Image("cute_knight_im2")
                    .resizable()
                    .scaledToFit()
                Image("cute_castle_im")
                    .resizable()
                    .scaledToFit()
                Image("cute_pawn_im")
                    .resizable()
                    .scaledToFit()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            
            

        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        VStack {
            Text(showPortfolio ? "Choose an Opening to Learn" : "Chess X Time")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .animation(.none)
                .padding(10)
            Text(showPortfolio ? "Click a card to play" : "")
                .foregroundColor(.gray)
            
            HStack {
                CircleButtonView(iconName: showPortfolio ? "chevron.left": "chevron.right")
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showPortfolio.toggle()
                        }
                    }
                NavigationLink(destination: StoryView()) {
                    CircleButtonView(iconName: "info")
                }
            

            }
            .padding(.horizontal)
        }
        }

}
