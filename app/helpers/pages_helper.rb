module PagesHelper
def is_active?(page_name)
    if params[:action] == page_name
        "active" #active style
    else
        "not-active" #not-active style
    end
end
end
