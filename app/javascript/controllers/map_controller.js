import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    const firstMarker = this.markersValue[0];
    const [longitude, latitude] = [firstMarker.lng, firstMarker.lat];

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/iloverob/clp9uq2zc003e01pjaoki6wu7",
      center: [longitude, latitude], 
      zoom: 12
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                        mapboxgl: mapboxgl }))
  }
  
  #addMarkersToMap() {
      this.markersValue.forEach((marker) => {
        const customMarker = new mapboxgl.Marker({ color: marker.color || 'orange' })
          .setLngLat([marker.lng, marker.lat])
          .addTo(this.map);
      });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}