import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Scanner;

public class GoogleSearchCLI {
	
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your search query:");
        String query = scanner.nextLine();
        scanner.close();

        String url = "https://www.google.com/search?q=" + query.replace(" ", "+");

        try {
            Desktop desktop = Desktop.getDesktop();
            desktop.browse(new URI(url));
            System.out.println("Searching for: " + query);
        } catch (IOException | URISyntaxException e) {
            e.printStackTrace();
        }
    }
}

