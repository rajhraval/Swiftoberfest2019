// Converting camelCase to snake_case properties


func save() {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.keyEncodingStrategy = .convertToSnakeCase

        
        if let savedData = try? jsonEncoder.encode(people) {
            let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "people")
        } else {
            print("Failed to save People")
        }
    }
    
// Converting vice-versa

func save() {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.keyEncodingStrategy = .convertToCamelCase

        
        if let savedData = try? jsonEncoder.encode(people) {
            let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "people")
        } else {
            print("Failed to save People")
        }
    }
