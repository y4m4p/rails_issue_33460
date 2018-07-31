# README
This is a sample application for https://github.com/rails/rails/issues/33460

## System dependencies

Install these programs to run the application correctly.

| program | version |
|:--:|:--:|
| ruby | 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin17] |
| Rails | 5.2.0 |
| Bundler | 1.16.1 |
| Mysql | 5.7.21 Homebrew |

## Configuration
- clone this repository in any directory you want.

`git clone https://github.com/y4m4p/rails_issue_33460.git`

- install gem dependencies

`bundle install --path vendor/bundle`

- create database
We won't be using the database. This is just for application sake.

`bundle exec rails db:create`

- run server
`bundle exec rails s`

## Steps to reproduce the issue
- Go to `localhost:3000` in your web browser.  
(I have only tested this with Vivaldi (Chromium))

- You should be able to access the welcome page.

- Now, in `app/helpers/web_pages_helper.rb` uncomment the 9th line.  
```
if true
  link_to 'somewhere', some_view_path(foo: 'true')
else
  # Uncomment the next line after you have successfully started up the server.
  #link_to 'somewhere', some_view_path(foo: 'false')
end 

uncomment ↓   

if true
  link_to 'somewhere', some_view_path(foo: 'true')
else
  # Uncomment the next line after you have successfully started up the server.
  link_to 'somewhere', some_view_path(foo: 'false')
end 
```

- Access `localhost:3000/some_view` in your browser.

- The server should crash with a error with the following message.
```
Started GET "/some_view" for 127.0.0.1 at 2018-07-31 20:43:46 +0900
(your directory)/rails_issue_33460/vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/compile_cache/iseq.rb:12: [BUG] Segmentation fault at 0x0000000000000000
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin17]

...
...

[NOTE]
You may have encountered a bug in the Ruby interpreter or extension libraries.
Bug reports are welcome.
For details: http://www.ruby-lang.org/bugreport.html

[IMPORTANT]
Don't forget to include the Crash Report log file under
DiagnosticReports directory in bug reports.

Abort trap: 6
```
