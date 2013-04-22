require "rubygems"
require "sinatra"

get '/' do
  form = "<form action='/reverse'>
          <input type='text' name='text'>
          <input type='submit'>
          </form>"
  sidebar = " <div class='container-fluid'>
  <div class='row-fluid'>
    <div class='span2'>
      <br />
      <div class='well'>
        <div align='center'>
        <img src='jack.jpg' class='img-polaroid'>
        <h4 align='center'>Jack Hanford</h4>
      </div>
      </div>
    <div class='well'>
  <ul class='nav nav-list'>
    <li class='nav-header'>More Topics</li>
    <li class='active'><a href='#'>Home</a></li>
    <li><a href='#'>Filler</a></li>
    <li><a href='#'>Filler</a></li>
    <li><a href='#'>Filler</a></li>
    <li><a href='#'>Filler</a></li>
    <li><a href='#'>Filler</a></li>
  </ul>
  </div>
  </div>
  "
  body = "
    <div class='span10'>
    <div align='center'>
    <header>
    <div id='banner'>
      </div>
    </header>
    <section>
      <header>
        <h3>Blog Posts</h3>
      <hr>
      </header>
      <article class='well'>
        <header>
          <h4>Today</h4>
        </header>
        <div class='post'>
         
        </div>
        
        <p>I learned so much Ruby today, it was insane. Ruby is so great, and I'm having so much fun in Bloc. I really enjoy working with my mentor and cohort. I can't wait to deploy my first app!</p>
      </article>
      <div class='submit'>
          <button class='btn-success' type='button'>Submit</button>
          <button class='btn-danger' type='button'>Cancel</button>
      </div>
    </section>
  </div>
     </div>
  </div>
</div>

    "
 " 
 <html>
 <head>
 <link href='bootstrap.css' rel='stylesheet' media='screen'>
     <style>
     </style>
     </head>
    <body>
    #{ sidebar }
    
    #{ body }
    #{ form }

    
    
    </body>
   </html>
   "

end
get '/reverse' do
  params[:text].reverse
  
end
