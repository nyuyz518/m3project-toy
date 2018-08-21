class Toy {
  constructor(data) {
    this.id = data.id;
    this.name = data.name;
    this.age = data.age;
    this.tag = data.tag
    Toy.all.push(this);
  }

  renderListItem() {
    return `
    <li>
      <h3>${this.name}
        <button data-id=${this.id}>edit</button>
      </h3>
    </li>`;
  }
}

Toy.all = [];
