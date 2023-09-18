import SwiftUI


struct FunFactsView: View {
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    var allFunFacts =
    [
        "jake has no money",
        "i need air to live",
        "creeks exist",
        "gays are real",
        "i like cheese",
        "Im not broke",
        "Avyan is real",
        "i eat cheese",
        "Gape horn",
        "einige is a real german word",
        "Parastratiosphecomyia stratiosphecomyioides Brunetti",
        "turdus maximus",
        "Colon asperatum",
    ]
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    @State private var funFact = ""
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    
    var body: some View {
        /*#-code-walkthrough(FunFactsView.color)*/
        ZStack {
            VStack {
                /*#-code-walkthrough(FunFactsView.color)*/
                Text("Fun Facts")
                    .font(.largeTitle)
                /*#-code-walkthrough(FunFactsView.textView)*/
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                /*#-code-walkthrough(FunFactsView.textView)*/
                
                /*#-code-walkthrough(FunFactsView.button)*/
                Button("Show Random Fact") {
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
                /*#-code-walkthrough(FunFactsView.button)*/
                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
                
                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
            }
            .padding()
        }
        
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
