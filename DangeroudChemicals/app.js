const searchInput = document.getElementById('searchInput');
const listData = document.getElementById('listData');

searchInput.addEventListener('keyup', function(event) {
  const searchQuery = event.target.value.toLowerCase();

  const filteredData = Array.from(listData.children)
    .filter(function(item) {
      return item.textContent.toLowerCase().includes(searchQuery);
    });

  Array.from(listData.children).forEach(function(item) {
    if (filteredData.includes(item)) {
      item.style.display = 'block';
    } else {
      item.style.display = 'none';
    }
  });
});
