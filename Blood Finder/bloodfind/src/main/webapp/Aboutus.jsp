<!DOCTYPE html>
<html lang="en">

<head>


  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



  
  <!-- Metadata for character set and viewport -->
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Page title and keywords for SEO -->
  <title>A Full Stack Web developer</title>


  <!-- Link to external stylesheet -->
  
  <link rel="stylesheet" href="allcontent/index.css" />
</head>

<body>
 <%@include file="nav.jsp" %>
  <!-- Header section -->
  <header class="header" role="banner" id="top">
    <div class="row">
      <!-- Navigation menu -->
    
    </div>
    <div class="header__text-box row">
      <div class="header__text">
        <!-- Heading -->
        <h1 class="heading-primary">
          <span>VISHAL KUMAR PRAJAPATI</span>
        </h1>
        <!-- Subtitle -->
        <p>Java Full Stack Developer</p>
        <!-- Button for contact -->
        <a href="#contact" class="bbtn bbtn--pink">Get in touch</a>
      </div>
    </div>
  </header>

  <!-- Main content section -->
  <main role="main">
    <!-- Resume section -->
    <section class="work" id="work">
      <div class="row">
        <h2>My Resume</h2>
        <div class="work__boxes">
          
          <!-- Resume content -->
          
           
          <div class="work__box">
            <div class="work__text">
              <h3>Technical Skills :</h3>
              <div class="tech__list">
                <!-- Technical skills -->
                <div class="tech">
                  <h3 class="tech-name">LANGUAGES:</h3>
                  <p class="tech-description"> Java,PHP</p>
                </div>
                <br>
                <div class="tech">
                  <h3 class="tech-name">WEB TECHNOLOGIES: </h3>
                  <p class="tech-description">HTML, CSS, Bootstrap</p>
                </div>
                <br>
                <div class="tech">
                  <h3 class="tech-name">DATABASE: </h3>
                  <p class="tech-description">MongoDB, MySQL</p>
                  <h3 class="tech-name">Frameworks </h3>
                  <p class="tech-description">Servlet, Hibernate, JDBC, JSP</p>
                </div>
              </div>
              <!-- Resume links -->
              <div class="work__links">
                <a id="download-bbtn"
                  href="https://download843.mediafire.com/6rzliikadvug6DvNoP8gev1OkbVGCT1f4bcuJKo7v6XTrFRVU09IQYl_z0p_9FJwM113hfKGa8nBpHGKxrDXv74P5wJFJDoQipHtHgkmbU68TT_XVYl9MMlZdAdwSfY-x0U0ztyhBxRZOLyyrQdo1uk1rG7T9c1CG0baz-MJRu5Eqw/o0sb58p9jrtxd7j/Vishal+ATS%28PDF%29_2.pdf"
                  class="link__text">Download Resume <span>&rarr;</span>
                </a>
                <!-- Image link for download -->
                <a
                  href="https://download843.mediafire.com/6rzliikadvug6DvNoP8gev1OkbVGCT1f4bcuJKo7v6XTrFRVU09IQYl_z0p_9FJwM113hfKGa8nBpHGKxrDXv74P5wJFJDoQipHtHgkmbU68TT_XVYl9MMlZdAdwSfY-x0U0ztyhBxRZOLyyrQdo1uk1rG7T9c1CG0baz-MJRu5Eqw/o0sb58p9jrtxd7j/Vishal+ATS%28PDF%29_2.pdf">
                  <img src="./images/download.png" class="work__code" title="Download" alt="Resume">
                </a>
              </div>
            </div>
            <div class="work__image-box">
              <h3 class="job-experience">Education</h3>
              <!-- Education details -->
              <div class="experience">
                <div class="experience-item">
                  <hr>
                  <div class="college"><br>
                    <h1>Bachelor of Science</h1>
                    <span class="duration">Year of Passing : 2023</span><br>
                    <span class="duration">Percentage : 62%</span>
                  </div>
                  <span class="college-name"><a class="institution-link" href="https://www.bujhansi.ac.in/index.aspx">Bundelkhand University Jhansi</a></span>
                </div>
                <br>
                <div class="experience-item">
                  <hr>
                  <div class="college"><br>
                    <h1>Higher Secondary</h1>
                    <span class="duration">School: Gurukul Inter College Gumnawara Jhansi</span><br>
                    <span class="duration">Percentage : 71%</span><br>
                    <span class="duration">Year of Passing : 2020</span>
                  </div>
                  <hr>
                  <div class="college"><br>
                    <h1>Secondary</h1>
                    <span class="duration">School: Gurukul Inter College Gumnawara Jhansi</span><br>
                    <span class="duration">Percentage : 62%</span><br>
                    <span class="duration">Year of Passing : 2018</span>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About Me section -->
    <section class="about" id="about">
      <div class="row">
        <h2>About Me</h2>
        <div class="about__textf">
          <!-- About Me content -->
          <p>
            I'm a software developer who excels at solving problems. What sets me apart is my boundless passion for
            programming. I'm highly motivated to create new and innovative solutions, and this fervor for technology is at
            the very core of who I am. I'm also a fast learner and inherently <br>self-motivated, always eager to learn and
            improve.
          </p>
          <!-- Button to link to Resume -->
          <a href="#work" class="bbtn">My Resume</a>
        </div>
      </div>
    </section>
  </main>

  <!-- Contact section -->
  <section class="contact" id="contact">
    <div class="row">
      <h2>Get in Touch</h2>
      <div class="contact__infoo">
        <!-- Contact information and message -->
        <p>
          Are you searching for a quick performing and easy-to-use site to
          represent your product or business? Or looking for any sort of
          meeting? Or need to seek clarification on some pressing issues? Or have some
          advice for me
          or just want to say "Hello 👋"? Regardless, go ahead and let me know. I
          will do my best to respond back. 😊 The quickest way of reaching
          me is through an email.
        </p>
        <!-- Email link -->
        <a href="mailto:prajapativishal0513@gmail.com" class="bbtn">prajapativishal0513@gmail.com</a>
      </div>
    </div>
  </section>


<!-- contact section-->
<section id="contact">
  <div class="container mt-3 contactContent">
      <h1 class="text-center">Contact Me</h1>

      <div class="row mt-4">
          <div class="col-lg-6">
              <!-- to edit google map goto https://www.embed-map.com type your location, generate html code and copy the html  -->
              <div style="max-width:100%;overflow:hidden;color:red;width:500px;height:500px;">
                  <div id="embedmap-canvas" style="height:100%; width:100%;max-width:100%;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1751.6783938609688!2d77.30522703672248!3d28.589071461835285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1696958940713!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </div>
                  <a class="googlemaps-html" href="https://www.embed-map.com" id="get-data-forembedmap">https://www.embed-map.com</a>
                  <style>#embedmap-canvas img{max-width:none!important;background:none!important;font-size: inherit;font-weight:inherit;}
                  </style>
              </div>
          </div>

          <div class="col-lg-6">
              <!-- form fields -->
              <form>
                  <input type="text" class="form-control form-control-lg" placeholder="Name">
                  <input type="email" class="form-control mt-3" placeholder="Email">
                  <input type="text" class="form-control mt-3" placeholder="Subject">
                  <div class="mb-3 mt-3">
                      <textarea class="form-control" rows="5" id="comment" name="text" placeholder="Project Details"></textarea>
                  </div>
              </form>
              <button type="button" class="bbtn btn-success mt-3">Contact Me</button>
              
          </div>

      </div>
  </div>
</section>





  <!-- Footer section -->
  <footer role="contentinfo" class="footer">
    <div class="row">
      <ul class="footer__social-links">
        <!-- Social media links -->
        <li class="footer__social-link-item">
          <a href="https://www.instagram.com/theimmatureladka/"
            title="Link to Instagram Profile">
            <img src="allcontent/instagram-svgrepo-com.svg" class="footer__social-image" alt="Instagram">
          </a>
        </li>
        <li class="footer__social-link-item">
          <a href="https://github.com/Vishal7024055" title="Link to Github Profile">
            <img src="allcontent/github.svg" class="footer__social-image" alt="Github">
          </a>
        </li>
       
        <li class="footer__social-link-item">
          <a href="https://www.linkedin.com/in/vishal-kumar-prajapati-b92366237/" title="Link to Linkedin Profile">
            <img src="allcontent/linkedin.svg" class="footer__social-image" alt="Linkedin">
          </a>
        </li>
      </ul>
      <!-- Copyright notice -->
      <p>
        &copy; Copyright 2023 by Vishal Kumar Prajapati
      </p>
    </div>
  </footer>

  <!-- Back to top button -->
  <a href="#top" class="back-to-top" title="Back to Top">
    <img src="allcontent/arrow-up.svg" alt="Back to Top" class="back-to-top__image" />
  </a>

  
</body>

</html>