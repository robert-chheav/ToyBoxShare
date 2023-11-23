import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["priceText"]
  static values = {
    price: Number
  }
  connect() {
    console.log('connect')
  }
  setStartDate(e) {
    // console.log(e.target.value)
    this.startDate = e.target.value
    if (this.startDate && this.endDate) {
      this.setPrice()
    }
  }
  setEndDate(e) {
    // console.log(e.target.value)
    this.endDate = e.target.value
    if (this.startDate && this.endDate) {
      this.setPrice()
    }
  }

  setPrice() {
    let sDate = new Date(this.startDate)
    let eDate = new Date(this.endDate)
    // console.log(sDate)
    // console.log(eDate)
    let days = (eDate - sDate)/(1000*60*60*24)
    // console.log(days)
    // console.log(this.priceValue)
    const price = this.priceValue
    // console.log(days*price)
    this.priceTextTarget.innerText = `Total: €${days*price}`
    
  }
}
