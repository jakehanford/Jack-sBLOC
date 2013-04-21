require "rubygems"
require "sinatra"

get '/' do
  form = "<form action='/reverse.css'>
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
  </div>"
 " <html>
 <head>
 <link href='bootstrap.css' rel='stylesheet' media='screen'>
     <style>
     </style>
     </head>
    <body>
    #{ sidebar }
    
    #{ form }
    
    </body>
   </html>
   "

end
get '/reverse' do
  params[:text].reverse
  
end