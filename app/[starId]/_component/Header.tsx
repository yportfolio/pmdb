import { Star } from "lucide-react";
import React from "react";

export default function Header() {
  return (
    <div>
      <h1>Title</h1>

      <div>
        <div>
          <span>IMDB rating</span>
          <Star />
          <span>9.3/10</span>
          <span>2.3m</span>
        </div>

        <div>
          <span>Your rating</span>
          <Star />
          <span>9/10</span>
        </div>
      </div>
    </div>
  );
}
