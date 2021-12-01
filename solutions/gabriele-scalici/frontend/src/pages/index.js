import { navigate } from "gatsby-link";

export default function Home() {
  if(typeof window !== 'undefined'){
    navigate('/jobs/lead-web-developer')
  }
  return null;
}