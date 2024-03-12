import Link from "next/link";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { MountainIcon } from "lucide-react";

export default function Navbar() {
  return (
    <header className="flex items-center h-14 w-full px-4 md:px-6">
      <Link className="mr-6" href="#">
        <MountainIcon className="h-6 w-6" />
        <span className="sr-only">Acme Inc</span>
      </Link>
      <div className="hidden md:flex flex-1 justify-center">
        <div className="flex items-center space-x-4 text-sm font-medium">
          <Link className="text-gray-900 dark:text-gray-50" href="#">
            Home
          </Link>
          <Link className="text-gray-500 dark:text-gray-500" href="#">
            Features
          </Link>
          <Link className="text-gray-500 dark:text-gray-500" href="#">
            Pricing
          </Link>
          <Link className="text-gray-500 dark:text-gray-500" href="#">
            Contact
          </Link>
        </div>
      </div>
      <div className="flex items-center justify-center flex-1">
        <Input
          className="w-full max-w-md px-2 py-1 rounded-md border border-gray-300 focus:outline-none focus:ring focus:ring-gray-400 dark:border-gray-700 dark:focus:ring-gray-600"
          placeholder="Search..."
          type="text"
        />
      </div>
      <div className="ml-auto flex items-center space-x-4">
        <Button size="sm" variant="outline">
          Sign In
        </Button>
        <Button size="sm" variant="outline">
          Language
        </Button>
      </div>
    </header>
  );
}
