module Dingtalk
  module Api
    class Process < Base
      def save(params)
        http_post("save?access_token=#{access_token}", { saveProcessRequest: params })
      end

      def delete(process_code, clean_running_task = true)
        params = {
          request: {
            process_code: process_code,
            clean_running_task: clean_running_task
          }
        }
        http_post("delete?access_token=#{access_token}", params)
      end

      def create_workrecord(params)
        http_post("workrecord/create?access_token=#{access_token}", { request: params })
      end

      def update_workrecord(params)
        http_post("workrecord/update?access_token=#{access_token}", { request: params })
      end

      def create_task(params)
        http_post("workrecord/task/create?access_token=#{access_token}", { request: params })
      end

      def update_task(params)
        http_post("workrecord/task/update?access_token=#{access_token}", { request: params })
      end

      private

      def base_url
        'topapi/process'
      end
    end
  end
end
