import React, { useState } from 'react';

function App() {
  const [query, setQuery] = useState('');

  const handleSearch = (e) => {
    e.preventDefault();
    const url = `https://www.google.com/search?q=${encodeURIComponent(query)}`;
    window.open(url, '_blank');
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>Google Search CLI</h1>
        <form onSubmit={handleSearch}>
          <input
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Enter your search query"
          />
          <button type="submit">Search</button>
        </form>
      </header>
    </div>
  );
}

export default App;
