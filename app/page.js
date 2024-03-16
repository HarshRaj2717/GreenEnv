import Image from "next/image";
import P1 from "./components/hero-p1";
import Cities from "./components/cities";

function NavBar() {
  return (
    <div className="navbar bg-primary">
      <div className="flex-1">
        <a className="btn btn-ghost text-xl">
          <Image src="/tree.png" width={30} height={30} alt="tree" />
          GreenEnv
        </a>
      </div>
      <div className="flex-none">
        <ul className="menu menu-horizontal px-1">
          <li>
            <a className="btn btn-secondary">Login</a>
          </li>
        </ul>
      </div>
    </div>
  );
}

function Hero() {
  return (
    <main className="flex flex-row min-h-screen">
      <div className="flex-grow-0 w-1/4 bg-gray-200">
        <P1 />
      </div>
      <div className="flex-grow bg-gray-300">
        <Cities />
      </div>
    </main>
  );
}

export default function Home() {
  return (
    <main className="">
      <NavBar />
      <Hero />
    </main>
  );
}
