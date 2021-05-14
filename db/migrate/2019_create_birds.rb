# Add code from Readme
 
class CreateBirds < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species
 
      t.timestamps
    end
  end
end

class Bird < ApplicationRecord
end

Rails.application.routes.draw do
  get '/birds' => 'birds#index'
end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end
end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render 'birds/index.html.erb'
  end
end