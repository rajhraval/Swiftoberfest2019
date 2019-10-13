import Foundation

let name = "What's in a name?"

// Converting a String into NSData
let data = name.data(using: .utf8)

// Compressing Data and Decompressing

do {
    let compressedData = try (data! as NSData).compressed(using: .zlib)
    print(compressedData.description)
    
    let decompressedData = try compressedData.decompressed(using: .zlib)
    print(decompressedData.description)
} catch {
    print(error.localizedDescription)
}



