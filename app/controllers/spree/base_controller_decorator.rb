Spree::BaseController.class_eval do

#  prepend_before_filter :redirect_supplier

  private

  def redirect_supplier
    if ['/admin', '/admin/authorization_failure'].include?(request.path) && try_spree_current_user.try(:supplier)
      redirect_to '/admin/shipments' and return false
#      redirect_to '/admin/products' and return false
    end
  end

end
