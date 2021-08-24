require 'rails_helper'

RSpec.describe Gift, type: :model do
  before do
    @gift = FactoryBot.build(:gift)
  end

  describe 'ギフト記録の新規登録' do
    context '新規登録がうまくいくとき' do
      it 'status_idとnameが存在すれば登録できる' do
        expect(@gift).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'status_idが空だと登録できない' do
        @gift.status_id = 1
        @gift.valid?
        expect(@gift.errors.full_messages).to include('(もらった物 or 贈った物)を選択してください')
      end
      it 'nameが空だと登録できない' do
        @gift.name = ''
        @gift.valid?
        expect(@gift.errors.full_messages).to include('ギフトの名称を入力してください')
      end
      it 'ユーザー情報がない場合は登録できない' do
        @gift.user = nil
        @gift.valid?
        expect(@gift.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
