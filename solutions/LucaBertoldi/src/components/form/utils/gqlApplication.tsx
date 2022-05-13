import {gql} from "@apollo/client"

const JobApplications = gql `
  mutation createJob($name: String!, $surname: String!, $email: String!, $phone: String!, $note: String!, $curriculum: String!) {
    createJobApplication(data: {name: $name, surname: $surname, email: $email, phone: $phone, note: $note, curriculum: $curriculum}) {
      id
    }
  }
`;

export default JobApplications