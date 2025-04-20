use strict;
use warnings;
use URI::Escape;

print "Enter your search query: ";
my $query = <STDIN>;
chomp($query);

my $url = "https://www.google.com/search?q=" . uri_escape($query);

my $command;
if ($^O eq 'linux') {
    $command = "xdg-open \"$url\"";
} elsif ($^O eq 'MSWin32') {
    $command = "start \"$url\"";
} elsif ($^O eq 'darwin') {
    $command = "open \"$url\"";
} else {
    die "Unsupported OS\n";
}

system($command);
print "Searching for: $query\n";
