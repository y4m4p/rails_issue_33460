module ApplicationHelper
  def broken_helper_in_application_helper
    ## Uncommenting the process below will crash the rails server whenever you render any view.
    ## This occurs EVEN IF YOU DO NOT USE THIS METHOD IN ANY VIEW.
    ## Accessing any page in your server will be impossible by uncommenting this.
    #
    #if true
    #  link_to 'somewhere', some_view_path(foo: 'true')
    #else
    #  link_to 'somewhere', some_view_path(foo: 'false')
    #end
  end
end
