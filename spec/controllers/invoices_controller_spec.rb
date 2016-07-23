require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe InvoicesController, type: :controller do
  login_user

  # This should return the minimal set of attributes required to create a valid
  # Invoice. As you add validations to Invoice, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InvoicesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all invoices as @invoices' do
      invoice = Invoice.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:invoices)).to eq([invoice])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested invoice as @invoice' do
      invoice = Invoice.create! valid_attributes
      get :show, params: { id: invoice.to_param }, session: valid_session
      expect(assigns(:invoice)).to eq(invoice)
    end
  end

  describe 'GET #new' do
    it 'assigns a new invoice as @invoice' do
      get :new, params: {}, session: valid_session
      expect(assigns(:invoice)).to be_a_new(Invoice)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested invoice as @invoice' do
      invoice = Invoice.create! valid_attributes
      get :edit, params: { id: invoice.to_param }, session: valid_session
      expect(assigns(:invoice)).to eq(invoice)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Invoice' do
        expect do
          post :create, params: { invoice: valid_attributes }, session: valid_session
        end.to change(Invoice, :count).by(1)
      end

      it 'assigns a newly created invoice as @invoice' do
        post :create, params: { invoice: valid_attributes }, session: valid_session
        expect(assigns(:invoice)).to be_a(Invoice)
        expect(assigns(:invoice)).to be_persisted
      end

      it 'redirects to the created invoice' do
        post :create, params: { invoice: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Invoice.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved invoice as @invoice' do
        post :create, params: { invoice: invalid_attributes }, session: valid_session
        expect(assigns(:invoice)).to be_a_new(Invoice)
      end

      it "re-renders the 'new' template" do
        post :create, params: { invoice: invalid_attributes }, session: valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested invoice' do
        invoice = Invoice.create! valid_attributes
        put :update, params: { id: invoice.to_param, invoice: new_attributes }, session: valid_session
        invoice.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested invoice as @invoice' do
        invoice = Invoice.create! valid_attributes
        put :update, params: { id: invoice.to_param, invoice: valid_attributes }, session: valid_session
        expect(assigns(:invoice)).to eq(invoice)
      end

      it 'redirects to the invoice' do
        invoice = Invoice.create! valid_attributes
        put :update, params: { id: invoice.to_param, invoice: valid_attributes }, session: valid_session
        expect(response).to redirect_to(invoice)
      end
    end

    context 'with invalid params' do
      it 'assigns the invoice as @invoice' do
        invoice = Invoice.create! valid_attributes
        put :update, params: { id: invoice.to_param, invoice: invalid_attributes }, session: valid_session
        expect(assigns(:invoice)).to eq(invoice)
      end

      it "re-renders the 'edit' template" do
        invoice = Invoice.create! valid_attributes
        put :update, params: { id: invoice.to_param, invoice: invalid_attributes }, session: valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested invoice' do
      invoice = Invoice.create! valid_attributes
      expect do
        delete :destroy, params: { id: invoice.to_param }, session: valid_session
      end.to change(Invoice, :count).by(-1)
    end

    it 'redirects to the invoices list' do
      invoice = Invoice.create! valid_attributes
      delete :destroy, params: { id: invoice.to_param }, session: valid_session
      expect(response).to redirect_to(invoices_url)
    end
  end
end
