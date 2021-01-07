require "erb"

module Wework
  module Api
    module Methods
      module Externalcontact
        def get external_userid
          get 'externalcontact/get', params: {external_userid: external_userid}
        end

        def get_contact_way config_id
          get 'externalcontact/get_contact_way', params: {config_id: config_id}
        end

        def add_contact_way type, scene, state, user
          # https://work.weixin.qq.com/api/doc/90001/90143/92577
          payload = {type: type, scene: scene, state: state, user: user}
          post 'externalcontact/add_contact_way', payload
        end

        def send_welcome_msg welcome_code, text, link
          # https://work.weixin.qq.com/api/doc/90000/90135/92137
          payload = {welcome_code: welcome_code, text: text, link: link}
          post 'externalcontact/send_welcome_msg', payload
        end
      end
    end
  end
end
