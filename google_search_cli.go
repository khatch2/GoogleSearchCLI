package main

import (
    "bufio"
    "fmt"
    "os"
    "os/exec"
    "strings"
)

func main() {
    reader := bufio.NewReader(os.Stdin)
    fmt.Print("Enter your search query: ")
    query, _ := reader.ReadString('\n')
    query = strings.TrimSpace(query)

    url := "https://www.google.com/search?q=" + query

    var command *exec.Cmd
    if os.Getenv("OS") == "Windows_NT" {
        command = exec.Command("cmd", "/c", "start", url)
    } else if os.Getenv("OSTYPE") == "darwin" {
        command = exec.Command("open", url)
    } else {
        command = exec.Command("xdg-open", url)
    }

    err := command.Start()
    if err != nil {
        fmt.Println("Failed to open browser:", err)
    } else {
        fmt.Println("Searching for:", query)
    }
}
