import Link from "next/link";

function Hero() {
  return (
    <div
      className="hero min-h-screen bg-base-200"
      style={{
        backgroundImage:
          "url(https://www.pngmart.com/files/12/Turquoise-Wave-PNG-File.png)",
      }}
    >
      <div className="hero-content text-center">
        <div className="max-w-md">
          <h1 className="text-5xl font-bold">Hello there...</h1>
          <p className="py-6 italic">
            Buy carbon offsets in an organised way, by leveraging web3 tech we
            make sure that every transaction is legit.
          </p>
          <Link href={"/auth/login"} className="btn btn-primary">
            Get Started
          </Link>
        </div>
      </div>
    </div>
  );
}

export default function Home() {
  return (
    <main className="">
      <Hero />
    </main>
  );
}
