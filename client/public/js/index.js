fetch("http://localhost:3030/data")
  .then((response) => {
    return response.json();
  })
  .then((data) => {
    console.log(data);
  });
