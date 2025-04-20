import Foundation

print("Enter your search query: ", terminator: "")
if let query = readLine() {
    let url = "https://www.google.com/search?q=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"

    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/open")
    process.arguments = [url]

    do {
        try process.run()
        print("Searching for: \(query)")
    } catch {
        print("Failed to open browser: \(error)")
    }
}
