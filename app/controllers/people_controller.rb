class PeopleController < ApplicationController
        def index
            @person = Person.all

            render json: @person
        end

        def show
            @person = Person.find(params[:id])

            render json: @person
        end

        def create
            @people = Person.create(name: params[:name], course: params[:course], salary: params[:salary])

            render json: @people
        end

        def update
            @people = Person.find(params[:id])
            @person.update(name: params[:name], course: params[:course], salary: params[:salary])

            render json: "#{@people.name} has been updated"
        end

        def destroy
            @people = Person.find(params[:id])

            if @person.present?
                @person.destroy
                render json: "#{@people.name} has been deleted"
            end
            
            render json:"Not found"
        end
end
