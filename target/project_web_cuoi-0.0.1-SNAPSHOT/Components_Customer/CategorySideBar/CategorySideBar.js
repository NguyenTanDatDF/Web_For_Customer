$(document).ready(function() {
    $("#slide_bar").before(`
    <nav id="sidebar">
    <div class="p-5 pt-5">
      <h5 style="text-transform: uppercase;">Categories</h5>
      <ul class="list-unstyled components mb-5">
       
          <a href="SetCategory?category=men" style = "color:black;"  aria-expanded="false" >Mens Shoes</a>
     
        </br>
        </br>

          <a href="SetCategory?category=women" style = "color:black;"  aria-expanded="false" >Womens
            Shoes</a>
         
        </br>
        </br>
      
          <a href="SetCategory?category=clothes" style = "color:black;"  aria-expanded="false" >Clothes</a>
       
       </br>
        </br>
      
          <a href="SetCategory?category=all" style = "color:black;"  aria-expanded="false" >All</a>
      </ul>
      <div class="mb-5">
        <h5 style="text-transform: uppercase;">Refine search</h5>
        <ul class="list-unstyled components mb-5">
          <li>
            <a href="#colerRefineSearch" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Color (Coming Soon)</a>
            <ul class="collapse list-unstyled" id="colerRefineSearch">
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>Black</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>White</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>Yellow</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>Red</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>Mixed</h5>
                    </label>
                  </div>
                </a></li>
            </ul>
          </li>
          <li>
            <a href="#price" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Price (Coming Soon)</a>
            <ul class="collapse list-unstyled" id="price">
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>50$-200$</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>200$-500$</h5>
                    </label>
                  </div>
                </a></li>
            </ul>
          </li>
          <li>
            <a href="#size" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Size (Coming Soon)</a>
            <ul class="collapse list-unstyled" id="size">
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>38-40</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>40-42</h5>
                    </label>
                  </div>
                </a></li>
              <li><a href="#"></span>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault"></label>
                    <h5>42-44</h5>
                    </label>
                  </div>
                </a></li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="mb-5">
        <a href="#" class="refine-search-btn">REFINE SEARCH</a>
      </div>      
  </nav>
    `)
})