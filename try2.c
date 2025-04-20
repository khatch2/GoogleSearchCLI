#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char query[256];
    printf("Enter your search query: ");
    fgets(query, sizeof(query), stdin);

    // Remove the newline character from the query
    size_t len = strlen(query);
    if (len > 0 && query[len - 1] == '\n') {
        query[len - 1] = '\0';
    }

    char url[512] = "https://www.google.com/search?q=";
    strcat(url, query);

    char command[1024];
    // snprintf(command, sizeof(command), "xdg-open \"%s\"", url); // For Linux
    snprintf(command, sizeof(command), "start \"%s\"", url); // For Windows
    // snprintf(command, sizeof(command), "open \"%s\"", url); // For macOS

    system(command);
    printf("Searching for: %s\n", query);

    return 0;
}
