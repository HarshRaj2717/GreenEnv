"use client";
import React, { useState } from "react";

import Map from "./map";

const allStatesLatLon = {
  "Andhra Pradesh": {
    lat: 16.5062,
    lon: 80.648,
    "pm2.5": "90",
    severity: "unhealthy",
  },
  "Arunachal Pradesh": {
    lat: 28.218,
    lon: 94.7278,
    "pm2.5": "60",
    severity: "unhealthy",
  },
  Assam: {
    lat: 26.2006,
    lon: 92.9376,
    "pm2.5": "85",
    severity: "unhealthy",
  },
  Bihar: {
    lat: 25.0961,
    lon: 85.3131,
    "pm2.5": "120",
    severity: "very unhealthy",
  },
  Chhattisgarh: {
    lat: 21.2787,
    lon: 81.8661,
    "pm2.5": "100",
    severity: "unhealthy",
  },
  Goa: {
    lat: 15.2993,
    lon: 74.124,
    "pm2.5": "75",
    severity: "unhealthy",
  },
  Gujarat: {
    lat: 22.2587,
    lon: 71.1924,
    "pm2.5": "95",
    severity: "unhealthy",
  },
  Haryana: {
    lat: 29.0588,
    lon: 76.0856,
    "pm2.5": "130",
    severity: "very unhealthy",
  },
  "Himachal Pradesh": {
    lat: 31.1048,
    lon: 77.1734,
    "pm2.5": "80",
    severity: "unhealthy",
  },
  Jharkhand: {
    lat: 23.6102,
    lon: 85.2799,
    "pm2.5": "110",
    severity: "unhealthy",
  },
  Karnataka: {
    lat: 15.3173,
    lon: 75.7139,
    "pm2.5": "85",
    severity: "unhealthy",
  },
  Kerala: {
    lat: 10.8505,
    lon: 76.2711,
    "pm2.5": "70",
    severity: "unhealthy",
  },
  "Madhya Pradesh": {
    lat: 22.9734,
    lon: 78.6569,
    "pm2.5": "115",
    severity: "unhealthy",
  },
  Maharashtra: {
    lat: 19.7515,
    lon: 75.7139,
    "pm2.5": "105",
    severity: "unhealthy",
  },
  Manipur: {
    lat: 24.6637,
    lon: 93.9063,
    "pm2.5": "75",
    severity: "unhealthy",
  },
  Meghalaya: {
    lat: 25.467,
    lon: 91.3662,
    "pm2.5": "80",
    severity: "unhealthy",
  },
  Mizoram: {
    lat: 23.1645,
    lon: 92.9376,
    "pm2.5": "70",
    severity: "unhealthy",
  },
  Nagaland: {
    lat: 26.1584,
    lon: 94.5624,
    "pm2.5": "75",
    severity: "unhealthy",
  },
  Odisha: {
    lat: 20.9517,
    lon: 85.0985,
    "pm2.5": "95",
    severity: "unhealthy",
  },
  Punjab: {
    lat: 31.1471,
    lon: 75.3412,
    "pm2.5": "125",
    severity: "very unhealthy",
  },
  Rajasthan: {
    lat: 27.0238,
    lon: 74.2179,
    "pm2.5": "110",
    severity: "unhealthy",
  },
  Sikkim: {
    lat: 27.533,
    lon: 88.5122,
    "pm2.5": "65",
    severity: "unhealthy",
  },
  "Tamil Nadu": {
    lat: 11.1271,
    lon: 78.6569,
    "pm2.5": "90",
    severity: "unhealthy",
  },
  Telangana: {
    lat: 18.1124,
    lon: 79.0193,
    "pm2.5": "100",
    severity: "unhealthy",
  },
  Tripura: {
    lat: 23.9408,
    lon: 91.9882,
    "pm2.5": "90",
    severity: "unhealthy",
  },
  "Uttar Pradesh": {
    lat: 26.8467,
    lon: 80.9462,
    "pm2.5": "135",
    severity: "very unhealthy",
  },
  Uttarakhand: {
    lat: 30.0668,
    lon: 79.0193,
    "pm2.5": "95",
    severity: "unhealthy",
  },
  "West Bengal": {
    lat: 22.9868,
    lon: 87.855,
    "pm2.5": "115",
    severity: "unhealthy",
  },
  "Andaman and Nicobar Islands": {
    lat: 11.67,
    lon: 92.7333,
    "pm2.5": "60",
    severity: "unhealthy",
  },
  Chandigarh: {
    lat: 30.7333,
    lon: 76.7794,
    "pm2.5": "120",
    severity: "very unhealthy",
  },
  "Dadra and Nagar Haveli and Daman and Diu": {
    lat: 20.26,
    lon: 72.98,
    "pm2.5": "85",
    severity: "unhealthy",
  },
  Delhi: {
    lat: 28.7041,
    lon: 77.1025,
    "pm2.5": "150",
    severity: "very unhealthy",
  },
  "Jammu and Kashmir": {
    lat: 33.2778,
    lon: 75.3412,
    "pm2.5": "80",
    severity: "unhealthy",
  },
  Lakshadweep: {
    lat: 10.5667,
    lon: 72.6367,
    "pm2.5": "55",
    severity: "unhealthy",
  },
  Puducherry: {
    lat: 11.9416,
    lon: 79.8083,
    "pm2.5": "90",
    severity: "unhealthy",
  },
  Ladakh: {
    lat: 34.2268,
    lon: 77.6169,
    "pm2.5": "70",
    severity: "unhealthy",
  },
};

function Statecard({ StateName }) {
  return (
    <div className="card w-64 shadow-xl bg-accent m-2">
      <div className="card-body">
        <h2 className="card-title">{StateName}</h2>
        <p>
          PM2.5: {allStatesLatLon[StateName]["pm2.5"]} |{" "}
          {allStatesLatLon[StateName]["severity"].toUpperCase()}
        </p>
      </div>
    </div>
  );
}

export default function Cities() {
  const stateNames = Object.keys(allStatesLatLon);
  const [searchTerm, setSearchTerm] = useState("");

  const filteredStateNames = stateNames.filter((stateName) =>
    stateName.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="flex flex-row min-h-screen">
      <span className="flex-grow w-1/2">
        <div className="flex flex-col flex-grow items-center mb-4">
          {/* Search Bar */}
          <label className="input input-bordered flex items-center gap-2 m-2 rounded-2xl">
            <input
              type="text"
              className="grow"
              placeholder="Search"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 16 16"
              fill="currentColor"
              className="w-4 h-4 opacity-70"
            >
              <path
                fillRule="evenodd"
                d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z"
                clipRule="evenodd"
              />
            </svg>
          </label>
        </div>

        {/* Cities List */}
        <div className="flex flex-wrap justify-center">
          {filteredStateNames.map((stateName) => (
            <Statecard key={stateName} StateName={stateName} />
          ))}
        </div>
      </span>

      <span className="flex-grow-0 w-1/4 bg-gray-100">
        <Map />
      </span>
    </div>
  );
}
