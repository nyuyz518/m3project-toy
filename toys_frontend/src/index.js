document.addEventListener('DOMContentLoaded', () => {
  const endPoint = 'http://localhost:3000/api/v1/toys';
  fetch(endPoint)
    .then(res => res.json())
    .then(json => {
      json.forEach(toy => {
        const newToy = new Note(toy);
        document.querySelector('#toys-list').innerHTML += newToy.renderListItem();
      });
    });
});
