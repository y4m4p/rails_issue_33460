module WebPagesHelper
  def helper_method
    if true
      link_to 'somewhere', some_view_path(foo: 'true')
    else
      #link_to 'somewhere', some_view_path(foo: 'false')
    end
  end
end
