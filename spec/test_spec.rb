require 'serverspec'

# テスト対象のサービスや設定などを記述します
describe service('nginx') do
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end
