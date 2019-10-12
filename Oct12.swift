import NaturalLanguage

// Making a word embedded in the language you want
if let embedding = NLEmbedding.wordEmbedding(for: .english) {
  
  	//The words you want to find similar to the search term with a total number of words
    let similarWords = embedding.neighbors(for: "car", maximumCount: 7)
    
  	//Prints the similar words with nearest distance to the search word
    for word in similarWords {
        print("\(word.0) has a distance of \(word.1)")
    }
}

