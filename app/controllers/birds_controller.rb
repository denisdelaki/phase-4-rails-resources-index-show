class BirdsController < ApplicationController
#Get the /birds 
def index
birds=Bird.all 
render json:birds
end
#Get the /birds/:id
def show 
birds=Bird.find_by(id: params[:id])
if birds 
    render json: birds 
else 
    render json: {error: "Bird not found"}, status: :not_found 
end
end 
end
