import SwiftUI

struct ContentView: View {
    let profileManager = ProfileManager(delegate: nil)
    let username = "Ayazhan"

    let samplePosts: [Post] = [
            Post(id: UUID(), authorId: UUID(), content: "It is MEEEEEE", likes: 555, imageURL: URL(string: "https://lh3.googleusercontent.com/pw/AP1GczN0xR9oSAzqUF5w3iNP3oLPPMRY-lQ_1uiwP71U0NDeb-agooNf2zQ6HbyORZ-jROI9hFwdoplDz6ZTX4H0ellmNil7DBOJuAdxTaOGgV5zZmcd0cTFEV8NfRh01ETt8Smc45H5Fgwc9YCpcIhQPPrvfNa2R88-UshfBBDxO5Thbs1fVQa4HvxiMen1SfF-pMlhKkIIDpFKu2L-6A4BjJyKb99ZDyPnU0g8l3ojDQiQZLZrR8Mz27Ze10Y3jbLi8a_TpV-e7J1F1WQFsa_XRdRol9nmJcA9Jkrx3yEkz9CspseGfDVkkocZC9ZgvXg24dplF_hbUOxZKmmIugd_cdWVsnpi9gMmzlc390sNAWnqLkmbafuLK0k55HS7NVHmaKdFxfSdc_pOVMO_JUToywpfrCqgdCxQIxwRMfk7j8OHgRq99rdWbgGI_iZfdIMgQpFzMNwHWssiYakOM2jJmzwcqrmQFAEvavSHl7vhumw8tMJHMCzRUpwiwD87RWcSdYmEhS2C90r7U1NvHAXFvOLN1JuIiJgI1pQrCE0KMZ-bBCtkxQU3XhHNTpr87WFfmLro0QciPVeLSWaYT2lsALzl684QKGiF66CC76ZKNWZ_ogT7XwFc-Lr4E_2GirvvGUfFV_HZyhimFIo6MFuy3Q3G_jLrzlaXd8DHlUxboTSCaI1yJNvNLxawr1kxz2l8bvoBAjjuKXoDtUOGqA9UXzEnszthqDBkXY3fXyzN695ghQ8CtHLMB23vXKlUF3rGbyd2PYf0b_NXNkLtQlW5Dtd0IyIMi1_8yNpPog3fAKdG5ZSmeEmjzW6c7B4vx5MqryM81yIeIvzNjZFkrqDp00xWc-CFuctjhTMWij54OGAUmXQN8zRYHsUvHp-RIrkvxSNLv14dOja9PY5U1_IZBI2ERg=w1080-h1440-s-no?authuser=0")),
            Post(id: UUID(), authorId: UUID(), content: "Praying for good points", likes: 82, imageURL: URL(string: "https://i.pinimg.com/736x/6f/04/79/6f04794f0715681b16de68d6685c61c4.jpg")),
            Post(id: UUID(), authorId: UUID(), content: "If you looking for new look", likes: 92, imageURL: URL(string: "https://i.pinimg.com/736x/c7/15/ea/c715ea362c29b38d204893138ffd61a4.jpg")),
            Post(id: UUID(), authorId: UUID(), content: "Soon...", likes: 829, imageURL: URL(string: "https://i.pinimg.com/736x/38/b3/76/38b376d242a19cbbc788578bd56a94b5.jpg")),
            Post(id: UUID(), authorId: UUID(), content: "Lovely", likes: 1689, imageURL: URL(string: "https://i.pinimg.com/736x/48/fc/eb/48fcebc72a58df07786f4eb6441c2bda.jpg")),
            Post(id: UUID(), authorId: UUID(), content: "Missing my brown hair", likes: 72, imageURL: URL(string: "https://lh3.googleusercontent.com/pw/AP1GczPHLCHeS27v-vtk5eZYETqaOaIPOOIdT_XVbrLArKjeTnQrvDiOg50ezkVf-dM7IhRmP6DmEAydM9gb-JW8nccfNfZ1Yuzq3c-W0kF1tHvP0Rjp8XDNj7Y4H9zWrWBan6xlbJlgD2JyiVTa1yCZ_76Ovj3tDc1IAeZyfd_tOaaOWbrFsBowVOGgIJSa3VWRnPixFnMcjFfREP_c5qFVzwtai4UApI_zm1SDbTvL3pBBtHIN3KGesdYHUN1pWLWJezCOK_vOHGait8C-6R0M5-IpiaX_f9ybaixDX0B249bI8b7hVLodfmkZelrkdCW3CPt_bOvp9jaXBnmJwzEji5TTbgqCPkEb1inchQ5NqeVH4MPDdviUKQ39FjToIZ3P8Ec3QtdeCYUL-lUMS76NPNCjL8cY7yWYTH4fP0WFogdLeaLWZobOlfhOmQrvwskItKcMhpk5SJdIPvHkpT9Mfi3VCwlbbI9cRbEBa4NvCyaKY6y62Ch2YWk9PS60EZObkdehOPx1GfN25mhdc0JI5nHLIs4oszkOqWiS1N4paIOMexXlEkTrDzyzDvGMt4c4WKcuzvfbplF8hvLMJJPSfGwhmMlr1mow_2FMQ1v1GYBURXWPUPyg43y48awS9u3W86rHYemk1RcZJ1bs_CT-6pcIN-GUnQEcJ4bjoxCPFZH-hjhHmpcBQcSG0-FqZU_qijcjBphx4c7NPL1hp4KWihJBByLPD9YgDQZImNtj6Yp52dwkxA5Q5CZ--7YDSAo0Em4M2iVI0JqMANp7eXO8ACNDFTsJ0KUrHn8HE2YxV1n7j6Ol8YUzunAji6XyoTPvGaNvGcy4NfGS5xyUAriVEYhg4zYUTGGYIukFE24YwIIvjzNwiI4dra569dmjjs-qhU3T1YeKbG8_PjbidlOBANC74Q=w1230-h1640-s-no?authuser=0")),

        ]

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: UserProfileView()) {
                    Text(username)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.leading)
                }
                
                Text("Feed")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .padding(.top, 5)
                
                FeedView(posts: samplePosts, profileManager: profileManager)
            }
            .navigationBarHidden(true)
        }
    }
}
