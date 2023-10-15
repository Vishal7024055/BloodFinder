<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>



  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="allcontent/index.css" />
</head>
<body>



 <%@include file="nav.jsp" %>
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

          <div class="col-lg-6" style="    padding-top: 35px;">
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



</body>
</html>