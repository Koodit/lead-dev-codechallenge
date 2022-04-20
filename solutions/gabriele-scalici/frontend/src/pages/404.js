import { navigate } from "gatsby-link";

export default function NotFound() {
  if(typeof window !== 'undefined'){
    navigate('/')
  }
  return null;
}