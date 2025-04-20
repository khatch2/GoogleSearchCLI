import java.awt.Desktop
import java.net.URI
import scala.io.StdIn.readLine

object GoogleSearchCLI {
  def main(args: Array[String]): Unit = {
    print("Enter your search query: ")
    val query = readLine()

    val url = s"https://www.google.com/search?q=${query.replace(" ", "+")}"

    try {
      val desktop = Desktop.getDesktop
      desktop.browse(new URI(url))
      println(s"Searching for: $query")
    } catch {
      case e: Exception => e.printStackTrace()
    }
  }
}
