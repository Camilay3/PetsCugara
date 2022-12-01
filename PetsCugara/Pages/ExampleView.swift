import SwiftUI

struct ExampleView: View {

    @State var frames: [String: CGRect] = [:]
    @State var focusedFrameName = "banho"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
                    .saveFrame(in: $frames, name: "text")
                Color.red
                    .frame(width: 100, height: 100)
                    .saveFrame(in: $frames, name: "red")
                Color.blue
                    .frame(width: 200, height: 200)
                    .saveFrame(in: $frames, name: "blue")
            }
            .navigationTitle("Title")
        }
        .overlay {
            FocusView(frame: frames[focusedFrameName])
        }
        .overlay(alignment: .bottom) {
            Button("Focus on Red") {
                withAnimation {
                    focusedFrameName = "red"
                }
            }
        }
    }
    
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
