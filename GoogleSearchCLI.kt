import java.awt.Desktop
import java.net.URI
import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    print("Enter your search query: ")
    val query = scanner.nextLine()

    val url = "https://www.google.com/search?q=${query.replace(" ", "+")}"

    try {
        val desktop = Desktop.getDesktop()
        desktop.browse(URI(url))
        println("Searching for: $query")
    } catch (e: Exception) {
        e.printStackTrace()
    }
}
