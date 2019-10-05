import UIKit
import NaturalLanguage

let input = "I don't like negative, I hate it so much, This thing sucks"

let tagger = NLTagger(tagSchemes: [.sentimentScore])
tagger.string = input

let (sentiment, _) = tagger.tag(at: input.startIndex, unit: .paragraph, scheme: .sentimentScore)

let score = Double(sentiment?.rawValue ?? "0") ?? 0
print(score)
