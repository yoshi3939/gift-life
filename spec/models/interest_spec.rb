require 'rails_helper'

RSpec.describe Interest, type: :model do
  before do
    @interest = FactoryBot.build(:interest)
  end

  describe 'ギフトアイデアの新規登録' do
    context '新規登録がうまくいくとき' do
      it 'nameが存在すれば登録できる' do
        expect(@interest).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nameが空だと登録できない' do
        @interest.name = ''
        @interest.valid?
        expect(@interest.errors.full_messages).to include("ギフトアイデアを入力してください")
      end
      it 'ユーザー情報がない場合は登録できない' do
        @interest.user = nil
        @interest.valid?
        expect(@interest.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
