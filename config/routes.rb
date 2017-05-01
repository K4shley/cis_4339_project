Rails.application.routes.draw do


  get 'reports/appointments_by_date'

  get 'reports/appointments_by_employee'

  get 'reports/employee_pay_by_date'

  get 'documentation/design'

  get 'documentation/user_manual'

  get 'documentation/post_mortem'

  get 'documentation/user_stories'

  get 'welcome/index'

  resources :timeslots
  resources :appointments
  resources :activities
  resources :employees
  resources :shifts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root #'reports#index'
  root 'welcome#index'
  get 'reports', to: 'reports#index'
  get 'reports/index'

  get 'documentation', to: 'documentation#index'
  get 'documentation/index'

  get'documentation/PostMortem'
  get'documentation/UserManual'
  get'documentation/Design'
  get'documentation/UserStories'






  post 'reports/create'

  post 'reports/create1'

  post 'reports/create2'

end
