<footer class="container-fluid text-white mt-5" style="padding: 5rem 0rem;background-color: #143109;">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="card bg-transparent border-0">
          <div class="card-body">
            <h5 class="mb-4">ABOUT</h5>
            <p>YouValue : Everything to remind you of your Value</p>
            <p class="mt-4"><i class="fas fa-map-marker-alt"></i> Addresss: Puting Kahoy, Silang, Cavite, Philippines</p>
            <p><i class="fas fa-envelope"></i> Email: 2040359@aup.edu.ph</p>
            <p><i class="fab fa-facebook-square"></i> No social media as of rn</p>
            <p>Harvesting Success <i class="fas fa-copyright"></i> 2025 by BSIT YouValue Group</p>

          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="card bg-transparent border-0">
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6 col-md-12">
                <div class="card bg-transparent border-0 p-0">
                  <div class="card-body p-0">
                    <h5 class="mb-4">INFORMATION</h5>
                    <ul>
                      <li class="mt-3">Log In</li>
                      <li class="mt-3">Sign Up</li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-12">
                <div class="card bg-transparent border-0 p-0">
                  <div class="card-body p-0">
                    <h5 class="mb-4">LINKS</h5>
                    <ul>
                      <li class="mt-3">Home</li>
                      <li class="mt-3">Readables</li>
                      <li class="mt-3">Contact</li>
                      <li class="mt-3">Sources</li>
                      <li class="mt-3">About</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<script src="dist/js/jquery.slim.min.js"></script>
<script src="dist/js/bootstrap.bundle.min.js"></script>
<script src="dist/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js"></script>
<script src="dist/js/fontawesome.js"></script>
<script>
	$('.carousel').slick({
  centerMode: true,
  centerPadding: '60px',
  slidesToShow: 1,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        arrows: true,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        arrows: true,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 1
      }
    }
  ]
});

  $('.comment').click(function(){
    alert('Login Required')
  })

  $('.showsearch').click(function(){
    $('.searchingwrapper').toggleClass('searchingwrapper_show')
  })
  $('.closesearch').click(function(){
    $('.searchingwrapper').toggleClass('searchingwrapper_show')
  })
   $(".button2").on("click", function() {


   var $button = $(this);
   var $parent = $button.parent(); 
   var oldValue = $parent.find('.input2').val();

   var products__quantity = parseInt($('.products__quantity').val()); // Convert to integer

   if ($button.text() == "+") {
      var newVal = parseFloat(oldValue) + 1;

      // Limit the value to a maximum of 10
      if (newVal > 10) {
          newVal = 10;
      }else if (newVal > products__quantity) {
          newVal = products__quantity;
      }
   } else {
      if (oldValue > 1) {
          var newVal = parseFloat(oldValue) - 1;
      } else {
          newVal = 1;
      }
   }
   $parent.find('.input2').val(newVal);
});



$(".input2").on("keyup", function() {
  var products__quantity = parseInt($('.products__quantity').val()); // Convert to integer

  var inputValue = parseInt($(this).val(), 10); // Convert input value to integer

  if (inputValue >= 10) {
    $(this).val(10);
  }else if (inputValue >= products__quantity) {
    $(this).val(products__quantity);
  }
});



$(document).ready(function(){
    $('.image-btn').on('click', function(){
        var imageUrl = $(this).val(); // Get the value of the clicked button
        $('.img').attr('src', imageUrl); // Set the src attribute of the img tag

        $('.imagemultiple').addClass('imagemultiple_show')
    });
});
</script>