"use client";
"use client";
import React, { useState } from "react";
import Link from "next/link";

export default function Verify() {
  const [otp, setOtp] = useState("");

  const handleKeyPress = (event) => {
    const charCode = event.which ? event.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
      event.preventDefault();
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const email = localStorage.getItem("email");
      const response = await fetch(
        "https://greenenv-django.onrender.com/biz/register/",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ email, code: otp }),
        }
      );
      if (response.ok) {
        const data = await response.json();
        if (data.success === 1) {
          localStorage.setItem("api_token", data.api_token);
          console.log("Verification successful");
          window.location.replace("/dashboard");
        } else {
          // Verification failed, show alert with message
          alert(data.message);
        }
      } else {
        // Verification failed due to network error
        console.error("Verification failed");
      }
    } catch (error) {
      // Handle network errors
      console.error("Network error:", error);
    }
  };

  return (
    <div className="hero min-h-screen bg-base-200">
      <div className="hero-content flex-col lg:flex-row">
        <div className="text-center lg:text-left">
          <h1 className="text-5xl font-bold">Verify your account!</h1>
          <p className="py-6">
            Your journey to a greener environment begins here... Verify to open
            your way to endless benefits!!
          </p>
        </div>
        <div className="card shrink-0 w-full max-w-sm shadow-2xl bg-base-100">
          <form className="card-body" onSubmit={handleSubmit}>
            <div className="form-control">
              <label className="label">
                <span className="label-text">OTP</span>
              </label>
              <input
                type="number"
                placeholder="otp"
                className="input input-bordered"
                value={otp}
                onChange={(e) => setOtp(e.target.value)}
                onKeyPress={handleKeyPress}
                required
              />
            </div>
            <div className="form-control mt-6">
              <button type="submit" className="btn btn-primary">
                Submit
              </button>
            </div>
            <div className="divider"></div>
            <Link className="btn btn-outline" href={"/auth/register"}>
              Go Back
            </Link>
          </form>
        </div>
      </div>
    </div>
  );
}
