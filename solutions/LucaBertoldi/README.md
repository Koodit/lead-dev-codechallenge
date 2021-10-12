## 🚀 Start
       ```shell
          launch this command on your terminal: docker-compose up
      ```
**SITE ARCHITECTURE.**

I decided to use **GRAPHCMS** for this project. Based on the deadline and my actual knowledge I thought to use an HEADLESS CMS that manage not only the backend but also the database. GraphCMS is very intuitive and simple to use. I decided to create four models:

    - **JobApplication**: model that'll receive all the data from the form;
    - **JobDescription**: model that'll send the data for the page;
    - **formApplication**: model that'll send the data for the form;
    - **JobOffer**: a general model that contain only the name of the position (lead-web developer in this case) and also a reference to the JobDescription and FormApplication.

The structure of the JobOffer leave the possibility to add another content for another position like "junior web developer" or others and with a query take some part of the jobDescription (like "chi siamo") that could have multiple uses or the FormApplication.

I used Gatsby as SSG because I think, based on the resources that I found, that it's the most documented and simple to begin with.

I used **React** and **Typescript** for the frontend with some libraries like: **axios**, **react-dropzone**, **toastify**, **emailjs**. And **GraphQl** with **Apollo-client** for the queries. I didn't use the gatsby built in gql because it doesn't support mutate query.

The next step will be add some Jest test to test if the page is rendered correctly or the requests.

**WHAT IS STILL MISSING**

The graphic is not the same in all part (example file loading) and dropzone "cerca" button is different. These are the first things to fix.
