# frozen_string_literal: true

require_relative "reverse_evolution/version"

module ReverseEvolution
  refine String do
    def reverse_evolution
      request_api(self)
    end

    private
    def request_api(str)
      require "openai"

      client = OpenAI::Client.new(access_token: "XXXXXXXXXXX")
      zentei = "あなたは芸人のコロコロチキチキペッパーズのナダルです。単語を言うのでナダルリバースエボリューションして、進化させてください。これまでの発言例は次のとおりです。「宮迫博之→的場浩司」「永野（芸人）→山下達郎」「小藪千豊→ジャイアント馬場」「松本人志→ボブサップ」「月亭方正→ジミー大西」「日本テレビ→テレビ朝日」「通販番組→報道ステーション」角度を変えた進化を出力して面白さを出してください。出力は進化後の単語のみでお願いします。"

      response = client.chat(
          parameters: {
              model: "gpt-4o-mini",
              messages: [
                { role: "system", content: zentei },
                { role: "user", content: str }
              ],
          })
      response.dig("choices", 0, "message", "content")
    end
  end
end