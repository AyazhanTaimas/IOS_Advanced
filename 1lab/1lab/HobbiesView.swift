import SwiftUI

struct Hobby: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let desc: String
}

struct HobbiesView: View {
    let hobbies = [
        Hobby(name: "Cooking", imageName: "cooking", desc: "not good enough, but I try my best"),
        Hobby(name: "Watching K-Dramas", imageName: "kdramas", desc: "I like to watch kdramas while I do something"),
        Hobby(name: "Watching Films", imageName: "films", desc: "same with kdramas")
    ]

    var body: some View {
        VStack {
            Text("my hobbies")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundStyle(Color.blue)

            List(hobbies) { hobby in
                HStack {
                    Image(hobby.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 100)
                        .clipped()
                    
                    VStack(alignment: .leading) { // Размещаем текст вертикально
                        Text(hobby.name)
                            .font(.title2)
                            .padding(.bottom, 2) // Добавляем небольшой отступ снизу
                        
                        Text(hobby.desc)
                            .font(.title3)
                            .foregroundStyle(Color.gray)
                    }
                    .padding(.leading, 10) // Отступ от изображения
                }
                .padding(.vertical, 5)
            }

        }
        .navigationTitle("Hobby")
        .navigationBarTitleDisplayMode(.inline) // Компактный заголовок
        .navigationBarBackButtonHidden(false) // Показывает кнопку "назад"
    }
}

#Preview {
    HobbiesView()
}
