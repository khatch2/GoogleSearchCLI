<?php
echo "Enter your search query: ";
$query = trim(fgets(STDIN));

$url = "https://www.google.com/search?q=" . urlencode($query);

if (PHP_OS_FAMILY === 'Linux') {
    $command = "xdg-open \"$url\"";
} elseif (PHP_OS_FAMILY === 'Windows') {
    $command = "start \"$url\"";
} elseif (PHP_OS_FAMILY === 'Darwin') {
    $command = "open \"$url\"";
} else {
    die("Unsupported OS\n");
}

shell_exec($command);
echo "Searching for: $query\n";
?>
