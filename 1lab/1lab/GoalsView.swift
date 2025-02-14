import SwiftUI

struct Goal: Identifiable{
    let id = UUID()
    let name: String
    let imageName: String
}

struct GoalsView: View {
    let goals = [
        Goal(name: "W&T", imageName: "w&t"),
        Goal( name: "start a career in IT", imageName: "it"),
        Goal(name: "buy my first car", imageName: "car")
    ]
    var body: some View {
        VStack {
            Text("my goals for 2025")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundStyle(Color.blue)

            List(goals) { goal in HStack{
                Image(goal.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 100)
                    .clipped()
                
                Text(goal.name)
                    .font(.title2)
                    .padding(.leading, 10)
            }
            .padding(.vertical, 5)
            }
        }
            .navigationTitle("Goals")
            .navigationBarTitleDisplayMode(.inline) // Компактный заголовок
            .navigationBarBackButtonHidden(false) // Показывает кнопку "назад"
    }
}

#Preview {
    GoalsView()
}
