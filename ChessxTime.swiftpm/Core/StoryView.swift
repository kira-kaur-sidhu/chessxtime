import SwiftUI

struct StoryView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                Text("ABOUT")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                
                ScrollView {
                    Image("cute_knight_im")
                        .padding(10)
            
                    Text("Background Information")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(10)
                    Text("    This app is intended for those who already know the rules of chess. If you need to learn the rules, or need a referesher, please visit... ")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding([.leading, .trailing], 40)
                    Text("    Learning chess openings is necessary for all those who want learn and play well! The 'secret' of the all-mighty chess elite isn't that they can think 100 moves ahead or see a giant chess board on the ceiling, but instead they are excellent at pattern recognization. The more chess patterns you know, the stronger of a player you are - this is especially true for learning chess openings. As international IM Robert Ris said 'everything in chess is pattern recognization.'")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding([.leading, .trailing], 40)
                    
                    Image("cute_bishop_im2")
                    
                    Text("How to Use this App")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(10)
                   
                    Text("    If you practice the sequence of moves for an opening, eventually you will be able to use it without using any of your game time and be able to recognize it when other's try to use it on you. This app is intended to make learning openings fun, fast and easy and to approach openings without heavy theory.")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding([.leading, .trailing], 40)
                    
                    Text("    Navigate back to the home page and click the arrow button to get to the 'Choose an Opening' page and choose which opening game you want to play. The app will demonstrate the correct sequence of moves for you, then it's your turn to copy the pattern! The faster you do it, the better your score will be. If you mess up a move, you will have to start from the beginning to win. Every time you load a new game, a random sequence of the opening will be chosen. So just because you beat it once, doesn't mean you mastered the opening just yet!")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding([.leading, .trailing], 40)
                    
                    Image("cute_queen_im2")

                    Text("    This app was made by Kira Sidhu for the Swift Student Challenge. Kira is a student software engineer at Ada Developer's Academy, whose mission is to help underrepresented groups break into the tech industry. She plans on updating this app by adding tutorials for all opening moves (white and black!), adding accessibility features, and publishing free on the appstore.")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding([.bottom, .leading, .trailing], 40)
                }
            }
        }

    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
