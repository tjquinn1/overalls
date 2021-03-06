class EssentialsController < ApplicationController

	before_action :find_essential, only: [:show, :edit, :update, :destroy]


	def index
		@essential = Essential.all.order("created_at DESC")
	end

	def new
		@essential = current_user.essentials.build
	end

	def show
	end

	def create
		@essential = current_user.essentials.build(essential_params)

		if @essential.save
			redirect_to @essential, notice: "Successfully created new essential"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @essential.update(essential_params)
			redirect_to @essential
		else
			render 'edit'
		end
	end

	def destroy
		@essential.destroy
		redirect_to root_path, notice: "Successfully deleted Essential"
	end


	private

	def essential_params
		params.require(:essential).permit(:band_name, :bio, :image, :country, :album, 
			favorites_attributes: [:id, :song_title, :url, :url_type, :_destroy], members_attributes: [:id, :band_member, :position, :_destroy], 
			labels_attributes: [:id, :record_label, :_destroy], catalogs_attributes: [:id, :song_name, :catalog_url_type, :catalog_url, :_destroy])
	end

	def find_essential
		@essential = Essential.find(params[:id])
	end
end
