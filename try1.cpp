#include <iostream>
#include <string>
#include <cstdlib>

int main() {
    std::string query;
    std::cout << "Enter your search query: ";
    std::getline(std::cin, query);

    std::string url = "https://www.google.com/search?q=" + query;
    // std::string command = "xdg-open \"" + url + "\""; // For Linux
    std::string command = "start \"" + url + "\""; // For Windows
    // std::string command = "open \"" + url + "\""; // For macOS

    system(command.c_str());
    std::cout << "Searching for: " << query << std::endl;

    return 0;
}
