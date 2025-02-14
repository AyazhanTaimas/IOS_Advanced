import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("me")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 270, height: 270)
                    .clipShape(Circle())
                    .shadow(color: Color.pink.opacity(0.5), radius: 10, x: 5, y: 5)
                    .padding(.top, -50)
                
                // .offset(y: 50)
                
                Text("Ayazhan")
                    .font(.title)
                    .padding(.top, 12)
                
                Text("19 years old")
                    .font(.subheadline)
                
                Text("Almaty")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                Text("some text")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                NavigationLink(destination: HobbiesView()) {
                    Text("my hobbies")
                        .font(.title2)
                        .padding()
                        .frame(width:200, height: 50)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    //  .padding(.top, -50)
                }
                .padding()
                
                NavigationLink(destination: GoalsView()) {
                    Text("my goals")
                        .font(.title2)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    // .padding(.top, -50)
                }
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ContentView()
}
