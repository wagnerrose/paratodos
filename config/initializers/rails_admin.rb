RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
# config.authenticate_with do
#   warden.authenticate! scope: :admin
# end
# config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.main_app_name = ["TELEBRAS", "Internet Para Todos"]

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export do
      except ["Admin", "Member"]
    end
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
# Include the models in the navigation
  config.included_models = ["MobileCompany", "Station", "Place", "State", "County", "AnatelLocality",
      "Admin", "Member"]

  config.model MobileCompany do
    list do
      sort_by :name
      field :name
    end
    exclude_fields :created_at, :updated_at
  end
  config.model Station do
    list do
      sort_by :county
      field :county do
        label "Município"
        column_width 160
      end
      field :name do
        column_width 120
      end
      field :neighborhood do
        column_width 160
      end
      field :mobile_company do
        label "Oper"
        column_width 60
      end
      field :address do
          hide
      end
      field :state do
        column_width 40
      end
      field :latitude do
        column_width 80
        label "Lat"
      end
      field :longitude do
        column_width 80
        label "Long"
      end
    end

    edit do
      field :county do
        label "Município"
        read_only true
      end
      field :name
      field :neighborhood
      field :address
      field :state do
        column_width 40
      end
      field :mobile_company do
        label "Operadora"
      end
      field :latitude
      field :longitude
    end

    exclude_fields :created_at, :updated_at, :id
  end
  config.model Place do
    list do
      sort_by :county
      field :neighborhood
      field :address
      field :latitude
      field :longitude
      field  :county
    end
    exclude_fields :created_at, :updated_at, :id
  end
  config.model State do
    list do
      sort_by :state
      field :state
      field :name
    end
    exclude_fields :created_at, :updated_at, :id
  end
  config.model County do
    list do
      sort_by :name
      field :name
      field :latitude
      field :longitude
      field  :state
    end
    exclude_fields :created_at, :updated_at, :id
  end
  config.model AnatelLocality do
    list do
      sort_by :county
      field :county
      field :countyInitials do
        label "Sigla"
        column_width 60
      end
      field :place
      field  :placeInitials do
        label "Sigla"
        column_width 60
      end
      field :state do
        label "UF"
      end
      field :latitude
      field :longitude
    end
    exclude_fields :created_at, :updated_at, :id
  end
end
