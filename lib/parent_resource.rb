module ParentResource
  def self.included base
    base.instance_eval do
      protected
      # Use to dry up polymorphphic controllers.
      
      # Accessor method to set the scope of parent collection. e.g. scope to a current_user or a current_account method
      #
      # e.g:
      # def current_account
      #   @current_account ||= Subscription.find_by_subdomain!(request.subdomains.first).account unless request.subdomains.first.nil?
      # end
      attr_accessor :scope_to
      
      # Returns the pluralized name of the "parent" controller
      def parent_object_name
        begin
          # Try to infer "parent" resource by walking back along the URL
          ActionController::Routing::Routes.recognize_path(path.gsub /\/#{params[:controller]}\/.+/, '', :method => :get)[:controller]
        rescue
          # Make best guess by looking for a key =~ /\w+_id/ if route recognition fails. This execution path
          # is unreliable with resources nested > one level deep.
          request.path_parameters.detect { |k,v| k.ends_with? "_id" }[0].gsub("_id", '').pluralize
        end
      end
    
      def parent_resource
        parent_object_name.singularize.classify.constantize
      end
      
      # Controller helper method
      def parent_collection
        scope_to.send parent_object_name
      end
    end
  end
end

ActionController::Base.send :include, ParentResource  