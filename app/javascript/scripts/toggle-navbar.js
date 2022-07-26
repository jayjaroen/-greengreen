const toggleNavbar = () => {
  var navbar = document.getElementById("navbar")
  const button = document.getElementById('navbar-toggle')

  if (navbar && button) {
    button.addEventListener('click', (e) => [
      navbar.classList.toggle("hidden")
    ])

  }
}

export { toggleNavbar }
