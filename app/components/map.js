"use client";
import React from "react";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";

export default function Map() {
  return (
    <div className="w-96 h-96">
      <MapContainer
        center={[20.5937, 78.9629]} // India's latitude and longitude
        zoom={5}
        style={{ height: "50vh", width: "100%" }}
      >
        <TileLayer
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        />
        {/* Add markers if needed */}
        <Marker position={[20.5937, 78.9629]}>
          <Popup>India</Popup>
        </Marker>
      </MapContainer>
    </div>
  );
}
