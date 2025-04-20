"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var child_process_1 = require("child_process");
var readline = require("readline");
var rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
rl.question('Enter your search query: ', function (query) {
    var url = "https://www.google.com/search?q=".concat(encodeURIComponent(query));
    var command;
    if (process.platform === 'win32') {
        command = "start \"\" \"".concat(url, "\"");
    }
    else if (process.platform === 'darwin') {
        command = "open \"".concat(url, "\"");
    }
    else {
        command = "xdg-open \"".concat(url, "\"");
    }
    (0, child_process_1.exec)(command, function (err) {
        if (err) {
            console.error('Failed to open browser:', err);
        }
        else {
            console.log("Searching for: ".concat(query));
        }
    });
    rl.close();
});
