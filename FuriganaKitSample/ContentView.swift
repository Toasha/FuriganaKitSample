import SwiftUI
import FuriganaKit

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    Group {
                        Text("Basic")
                            .font(.headline)
                        
                        FuriganaText(text: "私は学校へ行く")
                    }
                    
                    Group {
                        Text("Reading specified")
                            .font(.headline)
                        
                        FuriganaText(
                            text: "私は学校へ行く",
                            overrides: ["私": "わたし"]
                        )
                    }
                    
                    Group {
                        Text("Custom font size")
                            .font(.headline)
                        
                        FuriganaText(
                            text: "私は学校へ行く",
                            fontSize: 24
                        )
                    }
                    
                    Group {
                        Text("Multiple examples")
                            .font(.headline)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            FuriganaText(text: "漢字を読む")
                            FuriganaText(
                                text: "明日東京へ行く",
                                overrides: ["明日": "あした", "東京": "とうきょう"]
                            )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("FuriganaKit Sample")
        }
    }
}

#Preview {
    ContentView()
}
