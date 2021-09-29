import Image from "next/image";
import Link from "next/link";
import { randomImg } from "../config/featureToggles";
import { cssJoin } from "../lib/array";

export default function CoverImage({ title, coverImage, slug }) {
  const src =
    coverImage?.sourceUrl ||
    (randomImg && "https://source.unsplash.com/1000x500/?beach,tropical");

  const valid = src;

  const image = (
    <Image
      width={2000}
      height={1000}
      alt={`Cover Image for ${title}`}
      src={src}
      className={cssJoin([
        "shadow-small",
        slug && "hover:shadow-medium transition-shadow duration-200",
      ])}
    />
  );
  return valid ? (
    <div className="sm:mx-0">
      {slug ? (
        <Link href={`/posts/${slug}`}>
          <a aria-label={title}>{image}</a>
        </Link>
      ) : (
        image
      )}
    </div>
  ) : null;
}
