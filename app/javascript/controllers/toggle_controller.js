import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglable"]

  show() {
    this.togglableTarget.classList.remove("d-none")
  }

  connect() {
    console.log(this.togglableTarget)
  }
}
