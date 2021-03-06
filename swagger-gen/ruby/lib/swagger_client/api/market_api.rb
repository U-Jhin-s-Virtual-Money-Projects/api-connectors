=begin
#Bybit API

### REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  

OpenAPI spec version: 0.2.10
Contact: support@bybit.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module SwaggerClient
  class MarketApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Query Account Long Short Ratio
    # @param symbol Contract type.
    # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 500. Default size is 50
    # @return [Object]
    def market_account_ratio(symbol, period, opts = {})
      data, _status_code, _headers = market_account_ratio_with_http_info(symbol, period, opts)
      data
    end

    # Query Account Long Short Ratio
    # @param symbol Contract type.
    # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 500. Default size is 50
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_account_ratio_with_http_info(symbol, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_account_ratio ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_account_ratio"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling MarketApi.market_account_ratio"
      end
      # resource path
      local_var_path = '/v2/public/account-ratio'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol
      query_params[:'period'] = period
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_account_ratio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Query Big Deal
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
    # @return [Object]
    def market_big_deal(symbol, opts = {})
      data, _status_code, _headers = market_big_deal_with_http_info(symbol, opts)
      data
    end

    # Query Big Deal
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_big_deal_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_big_deal ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_big_deal"
      end
      # resource path
      local_var_path = '/v2/public/big-deal'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_big_deal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Query liq records.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From ID. Default: return latest data
    # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
    # @option opts [Integer] :start_time Start timestamp point for result, in millisecond
    # @option opts [Integer] :end_time End timestamp point for result, in millisecond
    # @return [Object]
    def market_liq_records(symbol, opts = {})
      data, _status_code, _headers = market_liq_records_with_http_info(symbol, opts)
      data
    end

    # Query liq records.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From ID. Default: return latest data
    # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
    # @option opts [Integer] :start_time Start timestamp point for result, in millisecond
    # @option opts [Integer] :end_time End timestamp point for result, in millisecond
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_liq_records_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_liq_records ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_liq_records"
      end
      # resource path
      local_var_path = '/v2/public/liq-records'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start_time'] = opts[:'start_time'] if !opts[:'start_time'].nil?
      query_params[:'end_time'] = opts[:'end_time'] if !opts[:'end_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_liq_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Query Open Interest
    # @param symbol Contract type.
    # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 200. Default size is 50
    # @return [Object]
    def market_open_interest(symbol, period, opts = {})
      data, _status_code, _headers = market_open_interest_with_http_info(symbol, period, opts)
      data
    end

    # Query Open Interest
    # @param symbol Contract type.
    # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit for data size, max size is 200. Default size is 50
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_open_interest_with_http_info(symbol, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_open_interest ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_open_interest"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling MarketApi.market_open_interest"
      end
      # resource path
      local_var_path = '/v2/public/open-interest'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol
      query_params[:'period'] = period
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_open_interest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the orderbook.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def market_orderbook(symbol, opts = {})
      data, _status_code, _headers = market_orderbook_with_http_info(symbol, opts)
      data
    end

    # Get the orderbook.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_orderbook_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_orderbook ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_orderbook"
      end
      # resource path
      local_var_path = '/v2/public/orderBook/L2'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_orderbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the latest information for symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol Contract type.
    # @return [Object]
    def market_symbol_info(opts = {})
      data, _status_code, _headers = market_symbol_info_with_http_info(opts)
      data
    end

    # Get the latest information for symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol Contract type.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_symbol_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_symbol_info ...'
      end
      # resource path
      local_var_path = '/v2/public/tickers'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = opts[:'symbol'] if !opts[:'symbol'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_symbol_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get recent trades
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From ID. Default: return latest data
    # @option opts [Integer] :limit Number of results. Default 500; max 1000
    # @return [Object]
    def market_trading_records(symbol, opts = {})
      data, _status_code, _headers = market_trading_records_with_http_info(symbol, opts)
      data
    end

    # Get recent trades
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From ID. Default: return latest data
    # @option opts [Integer] :limit Number of results. Default 500; max 1000
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def market_trading_records_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketApi.market_trading_records ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling MarketApi.market_trading_records"
      end
      # resource path
      local_var_path = '/v2/public/trading-records'

      # query parameters
      query_params = {}
      query_params[:'symbol'] = symbol
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketApi#market_trading_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
