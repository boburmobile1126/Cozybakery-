import Foundation
import SwiftUI
struct User: Identifiable, Codable {
    var id = UUID()
    var fullname : String
    var email: String
    var password: String
    var cpassword: String
}

class ContactsManager: ObservableObject{
    @Published var persons: [User]
    
    init() {
        self.persons = []
        loadContacts()
        
    }
    
    func deleteContact(at offsets: IndexSet) {
        persons.remove(atOffsets: offsets)
        /*saveContacts()*/ // Call function to save contacts after deletion
    }
    
    func saveContacts() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(persons) {
            UserDefaults.standard.set(encoded, forKey: "user")
        }
    }
    
    func loadContacts() {
        if let data = UserDefaults.standard.data(forKey: "user") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([User].self, from: data) {
                self.persons = decoded
                return
            }
        }
        // If loading fails or no data exists, initialize with empty array
        self.persons = []
    }
}
