require "rubygems"
require "sinatra"

get '/' do
  form = "      <form action='/reverse.css'>
        <input type='text' name='text'>
        <input type='submit'>"
 " <html>
     <style><!-- Include CSS code here -->
     </style>
    <body>
#{ form + form}
      </form>
    </body>
   </html>
   "

end
get '/reverse.css' do
  params[:text].reverse
  
end