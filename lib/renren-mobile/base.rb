# -*- coding: utf-8 -*-
require 'uri'
require 'multi_json'
require 'net/http'
require 'digest'
require 'rest_client'

module RenrenMobile
  class Base
    attr_accessor :params
    
    def initialize(access_token)
      @params = {}
      @params[:call_id] = Time.now.to_i
      @params[:format] = 'json'
      @params[:v] = '1.0'
      @params[:access_token] = access_token
    end
    
    def call_method(method, opts = {})
      method = method.gsub(".", "/")
      MultiJson.decode(Net::HTTP.post_form(URI.parse("http://api.m.renren.com/api/#{method}"), update_params(opts)).body)
    end
    
    def upload_file(method, filename, opts = {})
      method = method.gsub(".", "/")
      MultiJson.decode(RestClient.post('http://api.renren.com/restserver.do', update_params(opts).merge(:data => File.new(filename))))
    end
    
    private
      def update_params(opts)
        params = @params.merge(opts){|key, first, second| second}
        params[:sig] = Digest::MD5.hexdigest(params.map{|k,v| "#{k}=#{v}"}.sort.join + Config.api_secret)
        params
      end
  end
end
