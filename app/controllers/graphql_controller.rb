class GraphqlController < ApplicationController
  SCHEMA = GraphQL::Api::Schema.new.schema

  def index
    render json: SCHEMA.execute(
      params[:query], 
      variables: params[:variables] || {},
    )
  end

end