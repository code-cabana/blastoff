import { cssJoin } from "../lib/array";
import Image from "next/image";
import Link from "next/link";

export default function CoverImage({ title, coverImage, slug }) {
  const image = (
    <Image
      width={2000}
      height={1000}
      alt={`Cover Image for ${title}`}
      src={
        coverImage?.sourceUrl ||
        "https://source.unsplash.com/1000x500/?beach,tropical"
      }
      className={cssJoin([
        "shadow-small",
        slug && "hover:shadow-medium transition-shadow duration-200",
      ])}
    />
  );
  return (
    <div className="sm:mx-0">
      {slug ? (
        <Link href={`/posts/${slug}`}>
          <a aria-label={title}>{image}</a>
        </Link>
      ) : (
        image
      )}
    </div>
  );
}
