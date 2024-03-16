import Link from "next/link";
import Image from "next/image";

export default function Navbar() {
  return (
    <div className="navbar bg-base-100">
      <div className="flex-1">
        <Link className="btn btn-ghost text-xl" href={"/"}>
          <Image src={"/tree.png"} width={"30"} height={"30"} /> GreenEnv | Business
        </Link>
      </div>
      <div className="flex-none">
        <li className="btn mx-1">
          <Link href={"/auth/login"}>Get Started</Link>
        </li>
      </div>
    </div>
  );
}
