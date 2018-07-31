module WebPagesHelper
  # This method will crash the server with the following error.
  # ...vendor/bundle/ruby/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/compile_cache/iseq.rb:12: [BUG] Segmentation fault at 0x0000000000000000
  def broken_helper_method
    if true
      link_to 'somewhere', some_view_path(foo: 'true')
    else
      link_to 'somewhere', some_view_path(foo: 'false')
    end

    ## OR you can write it like this
    # if false
    #   link_to 'somewhere', some_view_path(foo: 'true')
    # else
    #   link_to 'somewhere', some_view_path(foo: 'false')
    # end
    #
    # Either way, if you write the if condition using true/false and writing a
    # `link_to` method using a url_helper with a request parameter in the never processed
  end

  def safe_helper_method
    if true
      link_to 'somewhere', some_view_path(foo: 'true')
    else
      #link_to 'somewhere', some_view_path(foo: 'false')
    end

    ## OR you can write it like this
    # if false
    #   #link_to 'somewhere', some_view_path(foo: 'true')
    # else
    #   link_to 'somewhere', some_view_path(foo: 'false')
    # end
    #
    #
    ## If you do not specify the request parameter for the unused else statement, it is also SAFE
    # if true
    #   link_to 'somewhere', some_view_path(foo: 'true')
    # else
    #   link_to 'somewhere', some_view_path
    # end
    #
  end
end
