require "rubygems"
require "sinatra"

get '/' do
 " <html>
     <style><!-- Include CSS code here -->
     </style>
    <body>
      <form action='/reverse'>
        <input type='text' name='text'>
        <input type='submit'>
      </form>
    </body>
   </html>
   "


end
   get '/reverse' do
  params[:text].reverse
  
end