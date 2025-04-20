const query = prompt("Enter your search query:");
const url = `https://www.google.com/search?q=${encodeURIComponent(query)}`;

const searchData = {
  search_query: query,
  url: url
};

console.log(JSON.stringify(searchData, null, 2));
