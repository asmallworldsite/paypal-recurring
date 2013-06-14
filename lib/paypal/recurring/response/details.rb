module PayPal
  module Recurring
    module Response
      class Details < Base
        mapping(
          :status       => :CHECKOUTSTATUS,
          :email        => :EMAIL,
          :payer_id     => :PAYERID,
          :payer_status => :PAYERSTATUS,
          :first_name   => :FIRSTNAME,
          :last_name    => :LASTNAME,
          :country      => :COUNTRYCODE,
          :currency     => :CURRENCYCODE,
          :amount       => :AMT,
          :subtotal     => :PAYMENTREQUEST_0_ITEMAMT,
          :tax_amount   => :PAYMENTREQUEST_0_TAXAMT,
          :item_name    => :L_PAYMENTREQUEST_0_NAME0,
          :item_amount  => :L_PAYMENTREQUEST_0_AMT0,
          :extra_name   => :L_PAYMENTREQUEST_0_NAME1,
          :extra_amount => :L_PAYMENTREQUEST_0_AMT1,
          :description  => :DESC,
          :ipn_url      => :NOTIFYURL
        )

        def agreed?
          params[:BILLINGAGREEMENTACCEPTEDSTATUS] == "1"
        end
      end
    end
  end
end
