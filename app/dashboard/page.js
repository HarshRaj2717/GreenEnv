"use client";
import React from "react";

export default function Dashboard() {
  const handleKeyPress = (event) => {
    const charCode = event.which ? event.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
      event.preventDefault();
    }
  };

  return (
    <div className="hero min-h-screen bg-base-200">
      <div className="hero-content flex-col">
        <div className="text-center">
          <h1 className="text-xl font-bold">
            Current carbon removal stat: <span className="italic">500</span>
          </h1>
        </div>
        <div className="card shadow-2xl bg-base-100">
          <form className="card-body">
            <div className="form-control">
              <label className="label">
                <span className="label-text">
                  Amount of Carbon footprint to remove (tonnes):
                </span>
              </label>
              <input
                type="text"
                placeholder="0"
                className="input input-bordered"
                onKeyPress={handleKeyPress}
                required
              />
            </div>
            <div className="form-control mt-6">
              <button className="btn btn-primary">Generate Token</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
