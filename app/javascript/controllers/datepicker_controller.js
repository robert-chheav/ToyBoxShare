import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    dates: Array
  }
  connect() {
    flatpickr(this.element, {
      disable: this.datesValue,
      dateFormat: "Y-m-d"
    })
  }
}
