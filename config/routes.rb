Rails.application.routes.draw do
  # Routes for the Theme resource:

  # CREATE
  match("/new_theme_form", { :controller => "themes", :action => "blank_form", :via => "get" })
  match("/insert_theme_record", { :controller => "themes", :action => "save_new_info", :via => "post" })

  # READ
  match("/themes", { :controller => "themes", :action => "list", :via => "get" })
  match("/themes/:id_to_display", { :controller => "themes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_theme_form/:id_to_prefill", { :controller => "themes", :action => "prefilled_form", :via => "get" })
  match("/update_theme_record/:id_to_modify", { :controller => "themes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_theme/:id_to_remove", { :controller => "themes", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  match("/new_comment_form", { :controller => "comments", :action => "blank_form", :via => "get" })
  match("/insert_comment_record", { :controller => "comments", :action => "save_new_info", :via => "post" })
  match("/create_comment_record", { :controller => "comments", :action => "save_new_row", :via => "get" })

  # READ
  match("/comments", { :controller => "comments", :action => "list", :via => "get" })
  match("/comments/:id_to_display", { :controller => "comments", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_comment_form/:id_to_prefill", { :controller => "comments", :action => "prefilled_form", :via => "get" })
  match("/update_comment_record/:id_to_modify", { :controller => "comments", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_comment/:id_to_remove", { :controller => "comments", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  match("/new_like_form", { :controller => "likes", :action => "blank_form", :via => "get" })
  match("/insert_like_record", { :controller => "likes", :action => "save_new_info", :via => "post" })

  # READ
  match("/likes", { :controller => "likes", :action => "list", :via => "get" })
  match("/likes/:id_to_display", { :controller => "likes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_like_form/:id_to_prefill", { :controller => "likes", :action => "prefilled_form", :via => "get" })
  match("/update_like_record/:id_to_modify", { :controller => "likes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_like/:id_to_remove", { :controller => "likes", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Story resource:

  # CREATE
  match("/new_story_form", { :controller => "stories", :action => "blank_form", :via => "get" })
  match("/insert_story_record", { :controller => "stories", :action => "save_new_info", :via => "post" })

  # READ
  match("/stories", { :controller => "stories", :action => "list", :via => "get" })
  match("/stories/:id_to_display", { :controller => "stories", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_story_form/:id_to_prefill", { :controller => "stories", :action => "prefilled_form", :via => "get" })
  match("/update_story_record/:id_to_modify", { :controller => "stories", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_story/:id_to_remove", { :controller => "stories", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
