import { exec } from 'child_process';
import * as readline from 'readline';

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter your search query: ', (query) => {
    const url = `https://www.google.com/search?q=${encodeURIComponent(query)}`;

    let command: string;
    if (process.platform === 'win32') {
        command = `start "" "${url}"`;
    } else if (process.platform === 'darwin') {
        command = `open "${url}"`;
    } else {
        command = `xdg-open "${url}"`;
    }

    exec(command, (err) => {
        if (err) {
            console.error('Failed to open browser:', err);
        } else {
            console.log(`Searching for: ${query}`);
        }
    });

    rl.close();
});
